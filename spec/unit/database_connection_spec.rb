describe DatabaseConnection do
  describe '.setup' do
    it 'establishes a connection to the test db using PG' do
      expect(PG).to receive(:connect).with(dbname: 'makers_bnb_test')
      DatabaseConnection.setup('makers_bnb_test')
    end
  end

  describe '.query' do
    it 'calls the exec method with the sql passed in' do
      connection = DatabaseConnection.setup('makers_bnb_test')
      expect(connection).to receive(:exec).with('SELECT * FROM users;')
      DatabaseConnection.query('SELECT * FROM users;')
    end
  end
end