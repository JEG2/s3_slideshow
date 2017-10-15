// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"

var slides = $("#slides img").length;
$("#slides").slidesjs({
    width:      640,
    height:     480,
    navigation: {active: false},
    pagination: {active: false},
    play:       {
        active:   false,
        effect:   "fade",
        interval: 5000,
        auto:     true
    },
    effect:     {
        fade: {
            speed:     300,
            crossfade: true
        }
    },
    callback:   {
        complete: function(number) {
            if (slides === number) {
                setTimeout(function() {
                    window.location.reload(true);
                }, 4000);
            }
        }
    }
});
