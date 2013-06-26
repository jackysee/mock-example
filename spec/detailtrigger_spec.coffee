describe "detail-trigger", ->

	beforeEach ->
		jasmine.getFixtures().fixturesPath = 'spec/fixtures'
		loadFixtures 'fixtures.html'

	it "should trigger target", ->
		trigger = $('.trigger')
		target = $('.detail')
		DetailTrigger.init(trigger, target)
		expect(target).toBeHidden()
		trigger.click()
		expect(target).toBeVisible()



