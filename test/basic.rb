require 'ideone'
require 'bacon'

describe 'an ideone gem user' do
  it 'can submit Ruby code and receive stdout' do
    paste_id = Ideone.submit( :ruby, %{puts "text on stdout"} )
    results = Ideone.run( paste_id, nil )
    results.should.equal %{text on stdout\n}
  end

  it 'can submit Python code and receive stdout' do
    paste_id = Ideone.submit( :python, %{print "text on stdout"} )
    results = Ideone.run( paste_id, nil )
    results.should.equal %{text on stdout\n}
  end

  it 'can submit PHP code and receive stdout' do
    paste_id = Ideone.submit( :php, %{<?php echo "text on stdout\\n"; ?>} )
    results = Ideone.run( paste_id, nil )
    results.should.equal %{text on stdout\n}
  end
end
