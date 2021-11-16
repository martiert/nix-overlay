self: super:
{
  projecteur = super.callPackage ./pkgs/projecteur { };
  generate_ssh_key = super.callPackage ./pkgs/generate_ssh_key { };
  mutt_ics = super.callPackage ./pkgs/mutt-ics { };
}
