describe User do
  describe '.create' do
    it 'wraps user info in a User object' do
      user = User.create(name: 'Malachi', email: 'm.spencer@makers.com', password: 'p20201124')
      
      expect(user.name).to eq('Malachi')
      expect(user.email).to eq('m.spencer@makers.com')
    end
  end

  describe '.find' do
    it 'returns nil if id is given as nil' do
      user = User.create(name: 'Malachi', email: 'm.spencer@makers.com', password: 'p20201124')

      expect(User.find(id: nil)).to be_nil
    end

    it 'retrieves user from db by id' do
      user = User.create(name: 'Malachi', email: 'm.spencer@makers.com', password: 'p20201124')
      found_user = User.find(id: user.id)

      expect(found_user.id).to eq(user.id)
      expect(found_user.email).to eq(user.email)
    end
  end
end