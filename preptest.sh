# Test [install]'s backup feature with some
# predefined [.bashrc] and [.profile] files
#
# Warning: this will overwrite any original
# (and backup) that might exist.

echo this will overwrite dotfiles. Press enter three times to proceed.
read ; read ; read
rm ~/.bashrc
rm ~/.profile
echo "echo XXX [\${BASH_SOURCE[0]}]" >> ~/.bashrc
echo "echo XXX [\${BASH_SOURCE[0]}]" >> ~/.profile
