/*global cordova, module*/

module.exports = {
    ExitIOSApp: function () {
        cordova.exec(null, null, "ExitIOSApp", "ExitIOSApp", []);
    }
};
