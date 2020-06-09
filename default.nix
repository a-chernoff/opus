{ mkDerivation, base, bytestring, conduit, exceptions, hspec
, http-client-tls, lens, libopus, resourcet, stdenv, tar, zlib
}:
mkDerivation {
  pname = "opus-hs-bindings";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring conduit exceptions hspec lens resourcet
  ];
  libraryPkgconfigDepends = [ libopus ];
  testHaskellDepends = [
    base bytestring hspec http-client-tls lens tar zlib
  ];
  homepage = "https://github.com/alios/opus#readme";
  description = "opus audio codec";
  license = stdenv.lib.licenses.bsd3;
}
