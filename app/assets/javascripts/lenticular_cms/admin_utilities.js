var adminUtilities = {
  'explodeLink': function(el, e) {
    e.preventDefault();
    var target = $(el).attr('href');
    $(target).removeClass('exploding-link-target');
    $(el).hide();
  }
}