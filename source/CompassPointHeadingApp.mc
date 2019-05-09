using Toybox.Application as App;

class CompassPointHeadingApp extends App.AppBase {

	function initialize() {
		App.AppBase.initialize();
	}

    function onStart(state) {
    }

    function onStop(state) {
    }

    function getInitialView() {
        return [ new CompassPointHeadingView() ];
    }
}