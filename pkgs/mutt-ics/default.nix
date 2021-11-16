{ lib, stdenv, pythonPackages, fetchFromGitHub }:

pythonPackages.buildPythonApplication rec {
  pname = "mutt-ics";
  version = "0.9.2";

  src = fetchFromGitHub {
    owner = "dmedvinsky";
    repo = "mutt-ics";
    rev = "ac54116be429cb92230f03ec8d3cdbdceaf8f008";
    sha256 = "1ppy94k87q7nfpxmajry1mn42c960n8zd9ka10g1jfjwkby2rmp8";
  };

  propagatedBuildInputs = [
    pythonPackages.icalendar
    pythonPackages.dateutil
  ];

  meta = with lib; {
    description = "Mutt-ics";
    homepage = "https://github.com/dmedvinsky/mutt-ics";
    license = licenses.mit;
    platforms = platforms.all;
    maintainers = [{
      name = "Martin Ertsås";
      email = "martiert@gmail.com";
    }];
  };
}
