var slider = tns({
    container: '.slider',
    controlsContainer: '#customize-controls',
    autoHeight: true,
    mouseDrag: true,
    items: 1,
    slideBy: 'page',
    autoplay: true,
    autoplayButtonOutput: false
});

document.addEventListener("turbolinks:before-cache", function() {
	slider.destroy();
});