using Toybox.Application as App;

class CompassPointHeadingApp extends App.AppBase {

    function onStart() {
    }

    function onStop() {
    }

    function getInitialView() {
        return [ new CompassPointHeadingView() ];
    }
}