/**
 * Created by ligui on 16/8/25.
 */
cordova.define("org.apache.cordova.CDVHello",function(require, exports, module){
    var exec = require('cordova/exec');
    module.exports = {
        sendMessageToNativeFunc : function (message, win, fail) {  //底部条切换
            exec(win, fail, "Hello", "sendMessageToNative", message);
        }
    };
});