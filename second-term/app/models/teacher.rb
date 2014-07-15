class Teacher < ActiveRecord::Base
	
	has_many :subjects

	accepts_nested_attributes_for :subjects, :reject_if => lambda { |a| a[:name].blank? && a[:subject_id].blank?  }, :allow_destroy => true
	validates_presence_of  :name,:teacher_id

	def active_subjects
		actives = subjects.select {|x| x.active == true}
		actives.count
	end 

end
