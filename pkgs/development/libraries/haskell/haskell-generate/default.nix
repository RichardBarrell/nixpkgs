# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, doctest, filepath, haskellSrcExts, transformers }:

cabal.mkDerivation (self: {
  pname = "haskell-generate";
  version = "0.2.1";
  sha256 = "1b7jy4a83lv9zwkzsgbipv7vlzcj27g1h3az7nxxc2gbmyrc15f4";
  buildDepends = [ haskellSrcExts transformers ];
  testDepends = [ doctest filepath ];
  meta = {
    homepage = "http://github.com/bennofs/haskell-generate/";
    description = "haskell-generate";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
