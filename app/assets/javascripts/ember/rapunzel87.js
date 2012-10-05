

Rapunzel87 = Ember.Application.create();

Rapunzel87.Router = Em.Router.extend({
	enableLogging: true,

	root: Em.Route.extend({
		//status change method
		showDiary: Ember.Route.transitionTo('diary'),

		index: Em.Route.extend({
			route: '/',
			connectOutlets: function(router) {
				console.log('Entering index...');
			}
		}),
		diary: Em.Route.extend({
			route: 'diary',
			connectOutlets: function(router) {
				console.log('Entering diary...');
			}
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

Rapunzel87.initialize();