this.DetailTrigger = #this === window, by iife
	init: (trigger, target)->
		@trigger = trigger
		@target = target
		@bindClick()
		return @
	bindClick: ->
		@trigger.on 'click', =>
			@target.toggle()
