
Swift语言实现 app从后台进入前台过程时毛玻璃模糊效果,类似支付宝效果


##用法

	
SecurityBlurEffect.swift拷贝至工程在`AppDelegate.swift` 添加如下代码


	  func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
        
        
        
        SecurityBlurEffect.addBlurEffect()
        
    }
    
    
	 func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
        SecurityBlurEffect.removeBlurEffect()

    }


