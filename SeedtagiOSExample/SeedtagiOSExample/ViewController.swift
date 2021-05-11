//
//  ViewController.swift
//  SeedtagiOSExample
//
//  Created by Cristina Arias on 10/05/2021.
//

import UIKit
import SeedtagFramework

class ViewController: UIViewController {

    @IBOutlet weak var mainTitle_lbl: UILabel!
    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var lbl_text1: UILabel!
    @IBOutlet weak var iv2: UIImageView!
    @IBOutlet weak var lbl_text2: UILabel!
    @IBOutlet var view_superview: UIView!
    
    let loremIpsumLong = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget ante ante. Etiam hendrerit eros in diam dictum ultricies. Aenean nulla sem, bibendum non porttitor eget, scelerisque semper erat. Suspendisse maximus magna orci, condimentum convallis eros vulputate non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus accumsan ante et ipsum porttitor, aliquam suscipit massa condimentum. In ligula sem, euismod vel feugiat nec, commodo ac nunc. Nam fringilla vestibulum pretium. Cras egestas in metus eu malesuada. Etiam ipsum felis, consequat nec odio eu, semper eleifend lectus. Duis dignissim neque sit amet mauris cursus, sollicitudin gravida libero placerat. Aenean vestibulum est ac nibh ullamcorper mattis. Donec consequat enim risus, sit amet rhoncus dui lobortis et. Nullam orci urna, blandit non tellus sit amet, pretium fermentum enim. Donec malesuada leo dolor, eu semper ipsum laoreet ac. In fermentum fringilla libero, at efficitur tortor. \nProin bibendum posuere lorem posuere scelerisque. Morbi sollicitudin nisl id viverra condimentum. Pellentesque at magna eu mi accumsan gravida imperdiet et massa. Fusce justo odio, gravida a dapibus at, dapibus nec nibh. Donec consequat pulvinar molestie. Suspendisse semper dolor eu urna pretium egestas. Etiam a pellentesque urna. In vehicula eros sodales massa semper, id ultrices ligula accumsan. Nullam feugiat convallis efficitur. Nunc vitae porttitor nibh. Sed felis purus, eleifend quis dolor non, facilisis luctus leo. Proin a lectus viverra, luctus ipsum id, accumsan urna. Aliquam vel lorem at turpis vulputate efficitur eu vel nibh. Nunc vehicula lacus et venenatis aliquet."
    let loremIpsumShort = "Fusce pharetra nibh in scelerisque lacinia. Donec lacus odio, luctus ac nibh et, blandit aliquet elit. Aenean tortor nunc, mattis id aliquet at, malesuada eget mi. In sit amet tristique nunc, in rutrum dui. Suspendisse nec elementum massa. Sed sit amet molestie elit, facilisis pharetra magna. Maecenas ac rhoncus neque. Morbi pretium tristique sem eget accumsan. Vestibulum luctus quam non mollis cursus. Phasellus ultricies non urna at vehicula. Curabitur lacus dui, egestas finibus interdum ac, aliquam eget tellus."
    
    let seedtagAdsManager = SeedtagAdsManager.getInstance()
    let seedtagPageView = SeedtagAdsManager.getInstance().createSeedtagPageView()
    
    let myAdvertisingId = ""
    let myIabConsentString = ""
    let mySeedtagToken = ""
    let myReferenceUrl = ""
    let myIsLimitAdTracking = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl_text1.text = loremIpsumLong
        lbl_text2.text = loremIpsumShort
        
        initSeedtagAds()
        
        placeInImageAds()
        
        //placeInScreenAd()
        
        //placeInArticleAd()
        
    }
    
    private func initSeedtagAds(){
        
        seedtagAdsManager.initSeedtagAds(
            advertisingId: myAdvertisingId,
            isLimitAdTracking: myIsLimitAdTracking,
            iabConsentString: myIabConsentString,
            seedtagToken: mySeedtagToken)
        
        seedtagAdsManager.enableTestMode()
    }
    
    private func placeInImageAds(){
        
        mainTitle_lbl.text = "Seedtag inImage"
        
        seedtagPageView
            .registerReferenceUrl(referenceUrl: myReferenceUrl)
            .addAdunit(adUnit: iv1)
            .addAdunit(adUnit: iv2)
            .requestAds()
    }
    
    private func placeInScreenAd(){
        
        mainTitle_lbl.text = "Seedtag inScreen"
        
        seedtagPageView
            .registerReferenceUrl(referenceUrl: myReferenceUrl)
            .addInScreenAd(parentView: view_superview)
            .requestAds()
    }
    
    private func placeInArticleAd(){
        mainTitle_lbl.text = "Seedtag inArticle"
        
        iv2.image = nil
        
        seedtagPageView
            .registerReferenceUrl(referenceUrl: myReferenceUrl)
            .addInArticleAdunit(inArticleAdunit: iv2)
            .requestAds()
    }


}

