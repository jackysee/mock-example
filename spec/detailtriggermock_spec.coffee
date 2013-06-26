describe "detail-trigger-in-mock", ->
	ctx = this

	beforeEach ()->
		ctx.jq = ()->
			on:(action, callback)->
				@callback = callback
			toggle:->
			click:->
				@callback()

	it "should bind trigger", ()->
		trigger = ctx.jq('.trigger')
		target = ctx.jq('.target')
		spyOn(trigger, 'on').andCallThrough()
		spyOn(target, 'toggle')

		DetailTrigger.init(trigger, target)
		expect(trigger.on.calls[0].args[0]).toEqual('click')
		trigger.click()
		expect(target.toggle).toHaveBeenCalled()



