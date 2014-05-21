{ cabal, hspec, tasty }:

cabal.mkDerivation (self: {
  pname = "tasty-hspec";
  version = "0.1";
  src = ./.;
  buildDepends = [ hspec tasty ];
  meta = {
    homepage = "http://github.com/mitchellwrosen/tasty-hspec";
    description = "Hspec support for the Tasty test framework";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
