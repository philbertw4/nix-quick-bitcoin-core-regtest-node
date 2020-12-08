self: super:
{
  bitcoin = super.bitcoin.overrideAttrs (old: {
    src = super.fetchFromGitHub {
      owner = "bitcoin";
      repo = "bitcoin";
      
      # set the revision to be the desired tag or recent commit hash 
      rev = "v0.21.0rc2";  
      
      # If you don't know the hash, the first time, set:
      # sha256 = "0000000000000000000000000000000000000000000000000000";
      # then nix will fail the build with such an error message:
      # hash mismatch in fixed-output derivation '/nix/store/m1ga09c0z1a6n7rj8ky3s31dpgalsn0n-source':
      # wanted: sha256:0000000000000000000000000000000000000000000000000000
      # got:    sha256:173gxk0ymiw94glyjzjizp8bv8g72gwkjhacigd1an09jshdrjb4
      sha256 = "065785kpz65qxcibhwmxspijvxy88pd20zqi7qvnbakscffjd9nf";
    };
  });
}
      
