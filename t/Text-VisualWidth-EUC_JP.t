# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Text-ViewWidth-EUC_JP.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 3;
BEGIN { use_ok('Text::VisualWidth::EUC_JP') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

# ʸ�������ɤ�EUC-JP

ok( Text::VisualWidth::EUC_JP::width("123abc������������") == 15, 'EUC_JP width');
ok( Text::VisualWidth::EUC_JP::trim("123������������",8) eq '123��������', 'EUC_JP trim');

