Rapunzel87 = Ember.Application.create();

Rapunzel87.Router = Em.Router.extend({
	enableLogging: true,

	root: Em.Route.extend({
		//status change method
		toDiary: Ember.Route.transitionTo('diary'),
		toGuestbook: Ember.Route.transitionTo('guestbook'),
		toPhoto: Ember.Route.transitionTo('photo'),
		toMusic: Ember.Route.transitionTo('music'),

		index: Em.Route.extend({
			route: '/',
			connectOutlets: function(router) {
				console.log('Entering index...');
				router.get('applicationController').connectOutlet('index');
			}
		}),
		diary: Em.Route.extend({
			route: '/diary',
			connectOutlets: function(router) {
				console.log('Entering diary...');
				router.get('applicationController').connectOutlet('diary');
			}
		}),
		guestbook: Em.Route.extend({
			route: '/guestbook',
			connectOutlets: function(router) {
				console.log('Entering guestbook...');
				router.get('applicationController').connectOutlet('guestbook');
			}
		}),
		photo: Em.Route.extend({
			route: '/photo',
			connectOutlets: function(router) {
				console.log('Entering photo...');
				router.get('applicationController').connectOutlet('photo');
			}
		}),
		music: Em.Route.extend({
			route: '/music',
			connectOutlets: function(router) {
				console.log('Entering music...');
				router.get('applicationController').connectOutlet('music');
			}
		}),
	})
});