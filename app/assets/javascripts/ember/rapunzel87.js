#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates

Rapunzel87 = Ember.Application.create();

Rapunzel87.Router = Em.Router.extend({
	root: Em.Route.extend({
		index: Em.Route.extend({
			route: '/',
			connectOutlets: function(router) {
				console.log('인덱스 들감');
			}
		}),
		diary: Em.Route.extend({
			route: 'diary'
		}),
		guestbook: Em.Route.extend({
			route: 'guestbook'
		}),
		photo: Em.Route.extend({
			route: 'photo'
		}),
		music: Em.Route.extend({
			route: 'music'
		}),
	})
});