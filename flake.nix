{

    description = "REI3 - Free and open low code";

    inputs.nixpkkgs.url = "github.con:NixOS/nixpkgs/master";
    inputs.rei3.url = "github.com:r3-team/r3/v3.8.6";

    outputs = { self, nixpkgs, rei3 }:
    let
        moduleName = "r3-team/r3";
        buildCmd = name:
            (ixpkgs.buildGoModule {
                pname = "rei3";
                version = "3.8.6";
                src = rei3;
                vendorHash = null;
            });
}
