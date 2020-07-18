( function _Uri_test_s_() {

'use strict';

if( typeof module !== 'undefined' )
{

  let _ = require( '../../Tools.s' );

  _.include( 'wTesting' );

  require( '../../abase/l6/Include.s' );
  
}

let _global = _global_;
let _ = _global_.wTools;

// --
// tests
// --

function routinesOfUriBasic( test ) 
{
  test.case = 'namespace _.uri';
  test.is( _.routineIs( _.uri.parse ) );
  test.is( _.routineIs( _.uri.parseAtomic ) );
  test.is( _.routineIs( _.uri.parseConsecutive ) );
  test.is( _.routineIs( _.uri.str ) );
  test.is( _.routineIs( _.uri.full ) );
  test.is( _.routineIs( _.uri.normalizeTolerant ) );
  test.is( _.routineIs( _.uri.rebase ) );
  test.is( _.routineIs( _.uri.documentGet ) );
  test.is( _.routineIs( _.uri.server ) );
  test.is( _.routineIs( _.uri.query ) );
  test.is( _.routineIs( _.uri.dequery ) );

  test.case = 'namespace _.uri.s';
  test.is( _.routineIs( _.uri.s.parse ) );
  test.is( _.routineIs( _.uri.s.parseAtomic ) );
  test.is( _.routineIs( _.uri.s.parseConsecutive ) );
  test.is( _.routineIs( _.uri.s.onlyParse ) );
  test.is( _.routineIs( _.uri.s.onlyParseAtomic ) );
  test.is( _.routineIs( _.uri.s.onlyParseConsecutive ) );
  test.is( _.routineIs( _.uri.s.str ) );
  test.is( _.routineIs( _.uri.s.full ) );
  test.is( _.routineIs( _.uri.s.normalizeTolerant ) );
  test.is( _.routineIs( _.uri.s.onlyNormalizeTolerant ) );
  test.is( _.routineIs( _.uri.s.rebase ) );
  test.is( _.routineIs( _.uri.s.documentGet ) );
  test.is( _.routineIs( _.uri.s.server ) );
  test.is( _.routineIs( _.uri.s.query ) );
  test.is( _.routineIs( _.uri.s.dequery ) );
}

//

function routinesOfWebUriBasic( test ) 
{
  test.case = 'namespace _.weburi';
  test.is( _.routineIs( _.weburi.isAbsolute ) );
  test.is( _.routineIs( _.weburi.join ) );
  test.is( _.routineIs( _.weburi.joinRaw ) );
  test.is( _.routineIs( _.weburi.resolve ) );
}

// --
// declare
// --

let Self =
{

  name : 'Tools.l6.Uri',
  silencing : 1,

  tests :
  {

    routinesOfUriBasic,
    routinesOfWebUriBasic,

  },

}

Self = wTestSuite( Self );
if( typeof module !== 'undefined' && !module.parent )
wTester.test( Self.name );

})();
