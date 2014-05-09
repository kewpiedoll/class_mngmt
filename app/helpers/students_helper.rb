module StudentsHelper

  def short_bio student
  	bio = student.bio
  	if @read_more.to_i == student.id
  		bio
  	else
  	  truncate bio, length: 15, omission: '...'
    end

    # old code, before truncate
  	# bio = student.bio
  	# short_bio = bio[0..12]
   #  short_bio += '...' if bio.length > 12
   #  short_bio
  end


end
