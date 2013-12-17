"use strict";

var when = require('when')
, helper = require('../src/helper.js')
, defines = require('../src/defines.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe('helper', function() {

	describe('#getOptions()', function() {

		it('should return the correct defaults', function() {
			var options = util.getOptions();

			options.should.deep.eql({
				name: 'default_name',
				appendString: '',
				prependString: '',
				headerRow: 0,
				ignoreEmptyHeaders: false,
				forceTypes: undefined,
				ignoreTypes: undefined,
				useHeaders: undefined,
				maintainHeaders: false,
				dataOnly: false,
				createOnly: false,
				insertStatements: false
			});
		});

		it.skip('should set a name');
		it.skip('should set an append string');
		it.skip('should set a prepend string');
		it.skip('should set the header row');
		it.skip('should set ignoreEmptyHeaders');
		it.skip('should set force types');
		it.skip('should set ignore types');
		it.skip('should set the headers to use');
		it.skip('should set maintain headers');
		it.skip('should set data only');
		it.skip('should set create only');
		it.skip('should set insert only');

	});

});
