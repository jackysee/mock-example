module.exports = (grunt)->

	grunt.initConfig
		watch:
			files: '**/*.coffee'
			tasks: ['test']

		jasmine:
			src: 'js/src/**/*.js'
			options:
				vendor: ['vendor/**/*.js']
				specs: 'js/spec/**/*spec.js'
				helpers: 'helpers/*.js'
				keepRunner: true

		coffee:
			compile:
				files:
					'js/src/all.js':['src/*.coffee']
					'js/spec/all_spec.js': ['spec/*spec.coffee']

	grunt.loadNpmTasks 'grunt-contrib-jasmine'
	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-contrib-watch'

	grunt.registerTask 'test', ['coffee', 'jasmine']
	grunt.registerTask 'default', 'test'

