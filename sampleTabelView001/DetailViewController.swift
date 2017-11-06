//
//  DetailViewController.swift
//  sampleTabelView001
//
//  Created by 濱野将士 on 2017/11/05.
//  Copyright © 2017年 Masashi Hamano. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myDescription: UITextView!
    @IBOutlet weak var myImageView: UIImageView!
    
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
    var explanation = [
        "紅茶の中でも特に香りを重視される紅茶である。香りを楽しむためストレートティーで飲まれることが多い。ダージリンが強い香りを持つのは、寒暖の差の激しい標高の高い山地で生産されているためである。セカンドフラッシュではマスカテルフレーバー（マスカットフレーバー）と呼ばれる特徴的な香りの顕著なものが上質とされる。",
        "アールグレイは、ベルガモットの落ち着きある芳香が大きな特徴である。このベルガモットの香りは精油や香料で着香されることが多い。茶の香気成分は冷やすと控え目になるが、人工的に香りを付けた着香茶であるアールグレイはアイスでも香りが比較的分かりやすいため、アイスティーに用いられることも多い。",
        "アッサム平原は世界有数の降水量を持ち、世界最大の紅茶産地である[1]。アッサムの紅茶は水色が濃い茶褐色でこくが強いため、ミルクティーとして飲まれることが多い[1]。チャイ用として細かく丸まったCTC製法（Crush Tear Curl－－つぶして、ひきさいて、丸める）で製茶されたものが多く出回っている。4月から5月にファーストフラッシュが、6月から7月にセカンドフラッシュが摘まれ、11月までが生産時期である[1]。インド国内で消費される量が多い",
        "茶の取引において使用される等級（オレンジ・ペコー等級）。OPと略される[1][2]。中国語起源とする説もあるが、一般的にこの等級は、非中国語圏のスリランカやインドなど中国以外の産地の茶にも用いられる。この等級は、茶葉のサイズの大きさや形状に基づいている。"
        ]
    
    
    //受け取った行番号を保存しておく変数
    var passedIndex:Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
        
    override func viewWillAppear(_ animated: Bool) {
        //-- json.txtファイルを読み込んで
        let path = Bundle.main.path(forResource: "json", ofType: "txt")
        let jsondata = try? Data(contentsOf: URL(fileURLWithPath: path!))
        
        
        
        print("2枚め表示されたよ")
        print("受け取った行は\(passedIndex)行目です")
        
        myLabel.text = teaList[passedIndex]
        myDescription.text = "\(explanation[passedIndex])"
        myImageView.image = UIImage(named: "\(passedIndex).jpg")
        
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
