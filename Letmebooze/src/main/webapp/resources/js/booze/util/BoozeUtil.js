var BoozeUtil = {
	globalLogLevel : "debug",
	
	logMessage: function(methodName, logLevel, message){
		if (this.globalLogLevel === 'debug') {
			if (logLevel === 'debug' || logLevel === 'info'	|| logLevel === 'error') {
				if (window.console) {
					console.log("[" + logLevel + "] :: "+ methodName + " :: " + message);
				}
			}
		} else if (this.globalLogLevel === 'info') {
			if (logLevel === 'info' || logLevel === 'error') {
				if (window.console) {
					console.log("[" + logLevel + "] :: "+ methodName + " :: " + message);
				}
			}
		} else if (this.globalLogLevel === 'error') {
			if (logLevel === 'error') {
				if (window.console) {
					console.log("[" + logLevel + "] :: "+ methodName + " :: " + message);
				}
			}
		}
	}
};