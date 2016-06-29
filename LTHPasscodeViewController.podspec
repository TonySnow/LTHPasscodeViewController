Pod::Spec.new do |s|

  s.name         = "LTHPasscodeViewController"
  s.version      = "3.7.6"
  s.summary      = "iOS 7 style Passcode Lock"

  s.description  = "# LTHPasscodeViewController\nSimple to use iOS 7 style (replica, if you will) Passcode view. Not the Lock Screen one, but the one you get in Settings when changing your passcode.\nI made it a singleton because if the lock is active, when leaving the app a view must be placed on top, so no data from within the app can be seen in the multitasking mode. This is done under the hood, without having to do anything extra.\n# How to use\nDrag the contents of `LTHPasscodeViewController` to your project, or add `pod 'LTHPasscodeViewController'` to your podspec file.\n* When opened from Settings (as a modal):\n```objc\n- (void)showForEnablingPasscodeInViewController:(UIViewController *)viewController;\n- (void)showForChangingPasscodeInViewController:(UIViewController *)viewController;\n- (void)showForTurningOffPasscodeInViewController:(UIViewController *)viewController;\n// Example:\n[[LTHPasscodeViewController sharedUser] showForEnablingPasscodeInViewController: self]\n```\n* At app launch, or whenever you'd like the user to be shown a passcode entry:\n```objc\n- (void)showLockscreenWithAnimation:(BOOL)animated;\n// Example:\n[[LTHPasscodeViewController sharedUser] showLockscreenWithAnimation: YES]\n// Displayed with a slide up animation, which, combined with\n// the keyboard sliding down animation, creates an \"unlocking\" impression.\n```\n* entering foreground and resigning is handled from within the class.\nEverything is easily customizable with macros and static constants.\nMakes use of [SFHFKeyChainUtils](https://github.com/ldandersen/scifihifi-iphone) to save the passcode in the Keychain. I know he dropped support for it, but I updated it for ARC 2 years ago ([with help](http://stackoverflow.com/questions/7663443/sfhfkeychainutils-ios-keychain-arc-compatible)) and I kept using it since. The 'new' version isn't updated to ARC anyway, so I saw no reason to switch to it, or to any other library.\nRather than writing a big documentation, I heavily commented it as best as I could. Feel free to [contact me](mailto:roland@rolandleth.com), or open an issue if anything is unclear, bugged, or can be improved.\n## Removing Unused Localizations\nBecause the App Store automatically attempts to determine supported locales, and LTHPasscodeViewController includes localizations for the aforementioned locales, you may want to remove the `.strings` file and `.lproj` directory. You can do this most easily by having the following command run in a new Build Phase:\n        $ find \"$TARGET_BUILD_DIR\" -maxdepth 8 -type f -name \"LTHPasscodeViewController.strings\" -execdir rm -r -v {} ;\n# Apps using this control\n[Expenses Planner](https://itunes.apple.com/us/app/expenses-planner-reminders/id669431471?mt=8)\n[DigitalOcean Manager](https://itunes.apple.com/us/app/digitalocean-manager/id633128302?mt=8)\n[LovelyHeroku](https://itunes.apple.com/us/app/lovelyheroku/id706287663?mt=8&uo=4)\n[Flow Web Browser](https://itunes.apple.com/us/app/flow-web-browser-downloader/id705536564?mt=8)\n[Balance - Checkbook App](https://itunes.apple.com/US/app/id854362248)\nIf you're using this control, I'd love hearing from you!"

  s.homepage     = "https://github.com/TonySnow/LTHPasscodeViewController"
  s.license      = { :type => "MIT", :file => "LICENSE.txt" }
  s.author             = { "Roland Leth" => "roland@leth.ro" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/TonySnow/LTHPasscodeViewController.git" }
  s.source_files  = "README.md, CHANGELOG.md, LTHPasscodeViewController",
    "LTHPasscodeViewController/*.{h,m}"
  s.resources = "Localizations/**"
  s.frameworks = "QuartzCore"
  s.requires_arc = true

end
