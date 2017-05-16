module SessionHelper
	def login(uid)
		session[:identity] = uid
	end
	def current_user
		@current_user ||= User.find_by_id(session[:identity])
	end
	def log_out
		session.delete(:identity)
		@current_user = nil
	end
	def is_login?
		!session[:identity].nil?
	end
	def the_ability
		@current_ability ||= Ability.new(current_user)
	end
end
