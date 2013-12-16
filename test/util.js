"use strict";

var when = require('when')
, util = require('../src/util.js')
, defines = require('../src/defines.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe('util', function() {

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

	});

});
