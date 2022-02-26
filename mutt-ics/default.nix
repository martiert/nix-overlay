{ lib
, stdenv
, pythonPackages
, mutt-ics
}:

pythonPackages.buildPythonApplication rec {
  pname = "mutt-ics";
  version = "0.9.2";

  src = mutt-ics;

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
