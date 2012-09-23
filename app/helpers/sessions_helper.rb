module SessionsHelper
	def sign_in(user)
		#새션 변수 채우고 현재 유저 설정한다.
		session[:user] = user.id
		self.current_user = user
	end

	def sign_out
		#세션 변수 비우고 현재 유저도 빼버린다.
		session[:user] = nil
		self.current_user = nil
	end

	def current_user=(user)
		#현재 유저 설정
		@current_user = user
	end

	def current_user
		#현재 유저를 반환해야 한다 세션에서 가져와야겠지... 세션이 없으면, 그냥 없는거지.
        # 혹시 current_user 를 지정했다면, @current_user가 현재 포함되어 있으니까 가져오는거고, 없으면,
        # self.curent_user = some user    // 뭔가 유저가 지정이 된거다
        # self.curren_user                // 그 섬 유저를 불러와야겠지

		# self.curren_user                // 곧바로 부르면 세션에서 가져와야지.        
        @current_user ||= User.find_by_id(session[:user])
	end

	def signed_in?
		# 사인인 되었음을 판단해야지.
		# 현재 유저가 있으면 (없지 않으면)
	  	!current_user.nil?
	end
end
