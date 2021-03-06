# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, conduit, monadControl, monadLogger, persistent
, resourcet, text, transformers
}:

cabal.mkDerivation (self: {
  pname = "persistent-sqlite";
  version = "2.0.4";
  sha256 = "0nklnkqcg2klwvcvgz0224y3pavmc2dmcvc0qdvf790ffb6j29ds";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    aeson conduit monadControl monadLogger persistent resourcet text
    transformers
  ];
  meta = {
    homepage = "http://www.yesodweb.com/book/persistent";
    description = "Backend for the persistent library using sqlite3";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
