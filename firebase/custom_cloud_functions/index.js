const admin = require("firebase-admin/app");
admin.initializeApp();

const checkExpiredDocuments = require("./check_expired_documents.js");
exports.checkExpiredDocuments = checkExpiredDocuments.checkExpiredDocuments;
