user = User.new(name: "SlayAllDay50", bio: "I slay all day")
user.save

user = User.new(name: "LittleTacoMate", bio: "tacotacotacotacotacotacotacotacoCAT")
user.save

tweet = Tweet.new(user_id: 1, tweet: "Yello yello yello yellolayhehoooo")
tweet.save
tweet = Tweet.new(user_id: 1, tweet: "1+1=window")
tweet.save
tweet = Tweet.new(user_id: 2, tweet: "Does anyone else like tacos?")
tweet.save
tweet = Tweet.new(user_id: 2, tweet: "Tacos > Pizza")
tweet.save
tweet = Tweet.new(user_id: 2, tweet: "veggie tacos >> pizza")
tweet.save