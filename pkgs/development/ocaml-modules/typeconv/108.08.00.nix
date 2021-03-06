{stdenv, fetchurl, ocaml, findlib}:

let
  ocaml_version = (builtins.parseDrvName ocaml.name).version;
in

assert stdenv.lib.versionOlder "3.12" ocaml_version;

stdenv.mkDerivation {
  name = "ocaml-typeconv-108.08.00";

  src = fetchurl {
    url = https://ocaml.janestreet.com/ocaml-core/108.08.00/individual/type_conv-108.08.00.tar.gz;
    sha256 = "08ysikwwp69zvc147lzzg79nwlrzrk738rj0ggcfadi8h5il42sl";
  };

  buildInputs = [ocaml findlib]; 

  createFindlibDestdir = true;

  meta = with stdenv.lib; {
    homepage = https://ocaml.janestreet.com/;
    description = "Support library for OCaml preprocessor type conversions";
    #license = licenses.apl20; invalid license
    platforms = ocaml.meta.platforms;
    maintainers = with maintainers; [ z77z ];
  };
}
