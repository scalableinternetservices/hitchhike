/**
 * Created by jacob on 11/15/15.
 */
var globalMaps = 0;
var globalRating = 0;
var maps = [];
function initializeMaps() {
    $('.inactive-map').each(
        function(i) {
            $(this).attr("id", "gmap" + globalMaps);
            console.log($(this).children(".lat").val());
            var lng = parseFloat($(this).children(".lng").val());
            var lat = parseFloat($(this).children(".lat").val());
            console.log(lat+","+lng);
            $(this).removeClass('inactive-map');
           maps.push(new google.maps.Map(document.getElementById('gmap'+globalMaps), {
                center: {lat: lat, lng: lng},
                zoom: 10,
                mapTypeControl: false,
                disableDefaultUI: true,
                scrollwheel: false,
                draggable: false,
                disableDoubleClickZoom: true
            }));
            console.log("Pushed");
            globalMaps++;
        });
    $('.inactive-rating').each(
        function(i) {
            $(this).attr("id", "rating" + globalRating);
            console.log($(this).children(".rate").val());
            var rate = parseFloat($(this).children(".rate").val());
            console.log("rate " + rate);
            $(this).removeClass('inactive-rating');
            $(this).raty({
                    readOnly: true,
                    score: rate,
                    path: '/assets'
             });
            console.log("Rated");
            globalRating++;
        });
}