var lcmsAdminNav = {
  currentLink: null,
  events: function(el) {
    var that = this;
    $('a.submenu-trigger').click(function(e){
      that.toggleMenu(this);
    });
    $('#lcms-admin-nav a.top-level-link, #lcms-admin-nav ul.lcms-submenu a').click(function(e) {
      that.updateActiveIndicators(this);
      if($(this).hasClass('top-level-link')) {
        that.closeAllSubmenus();
      }
    });
  },
  initialize: function() {
    this.events();
    lcmsAdminNav.markActiveLink();
  },
  markActiveLink: function() {
    var pathname = window.location.pathname;
    var active = $('#lcms-admin-nav a[href$="' + pathname + '"]:first');
    $(active).addClass('active')
    this.currentLink = active;
    var parent = $(active).parent().parent();
    if (parent.hasClass('lcms-submenu')) {    
      this.toggleMenu($(parent.prev()));
    }
  },
  toggleMenu: function(trigger) {
    var target = $(trigger).data('target');
    if ($(trigger).hasClass('submenu-collapsed')) {
      $(trigger).removeClass('submenu-collapsed');
      $(target).removeClass('lcms-submenu-collapsed');
    } else {
      $(trigger).addClass('submenu-collapsed');
      $(target).addClass('lcms-submenu-collapsed');
    }
  },
  updateActiveIndicators: function(trigger) {
    if(this.currentLink) {
      this.currentLink.removeClass('active');
    }
    this.currentLink = $(trigger);
    this.currentLink.addClass('active');
  },
  closeAllSubmenus: function() {
    $('.lcms-submenu').addClass('lcms-submenu-collapsed');
    $('.submenu-trigger').addClass('submenu-collapsed');
  }
}

$(document).ready(function(){
  lcmsAdminNav.initialize();
  
});
document.addEventListener("turbolinks:load", function() {
  
});

