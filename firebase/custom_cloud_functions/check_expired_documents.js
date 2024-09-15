const functions = require("firebase-functions");
const admin = require("firebase-admin");

// Firestore reference
const db = admin.firestore();

exports.checkExpiredDocuments = functions.pubsub
  .schedule("every 24 hours")
  .onRun(async (context) => {
    const currentTime = new Date();

    try {
      // Query the users collection for documents where expireAt is less than the current time and isActive is true
      const expiredDocsQuerySnapshot = await db
        .collection("users")
        .where("expireAt", "<", currentTime)
        .where("isActive", "==", true)
        .get();

      if (expiredDocsQuerySnapshot.empty) {
        console.log("No expired documents found.");
        return null;
      }

      // Batch update for performance
      const batch = db.batch();

      // Loop through all expired documents and update their isActive field to false
      expiredDocsQuerySnapshot.forEach((doc) => {
        const docRef = db.collection("users").doc(doc.id);
        batch.update(docRef, { isActive: false });
      });

      // Commit the batch update
      await batch.commit();
      console.log("Successfully updated expired documents.");

      return null;
    } catch (error) {
      console.error("Error updating expired documents: ", error);
      return null;
    }
  });
