{
    lib,
    stdenv,
    buildGoModule,
    fetchFromGithub
}:

buildGoModule rec {
    pname = "rei3";
    version = "3.8.6";

    src = fetchFromGithub {
        owner = "r3-team";
        repo = "r3";
        rev = "v${version}";
        hash = "sha256-0s444p12shr85p4zmsghg4jirlkrfr3k6ybsfnalbcfjmb3v1j1b";
    };

    vendorHash = null;

    meta = {
        description = "REI3 - Free and open low code";
        homepage = "https://rei3.de/";
        license = lib.licenses.mit;
    };
}
