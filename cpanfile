requires 'Redis', '1.9.74';

on 'test' => sub {
  requires 'Test::More', '>= 0.96, < 2.0';
  requires 'Amon2', '6.02'
};
