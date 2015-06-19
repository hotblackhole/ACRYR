require "rails_helper"

RSpec.describe Mailer, type: :mailer do
	describe 'instructions' do
	    let(:mail) { Mailer.send_mail("rufygtfo@gmail.com","c.coque@hotmail.fr","Feu","Feu sur toi pirate") }

		it 'renders the subject' do
	      expect(mail.subject).to eql('Feu')
	    end
	 
	    it 'renders the sender email' do
	      expect(mail.from).to eql(['rufygtfo@gmail.com'])
	    end
	 
	    it 'assigns @name' do
	      expect(mail.body).to match("Feu sur toi pirate")
	    end
	end

	describe 'instructions' do
		let(:mail) { Mailer.send_mail("rufygtfo@gmail.com","c.coque@hotmail.fr","Feu","Feu sur toi pirate").deliver_now }

		it 'email sent' do
	      expect(mail.subject).to eql('Feu')
	    end
	end
end
