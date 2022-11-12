//
//  MainVC.swift
//  RestAPITutorial
//
//  Created by Hertz on 11/12/22.
//

import Foundation
import UIKit
import SwiftUI

class MainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var dummyDataList = [
        "asdfasdf", "fasdfasdf", "asdfasdf", "fasdfasdf", "dfsdfsdf", "fdsdfsdf", "asdfqwd"
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.tableView.register(ToDoCell.uiNib, forCellReuseIdentifier: ToDoCell.reuseIdentifier)
        self.tableView.dataSource = self
        
    }
    
    
    
    
    
    
    
    
}

extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyDataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ToDoCell.reuseIdentifier, for: indexPath) as? ToDoCell else { return UITableViewCell() }
        
        return cell
    }
}


// MARK: - UINib TableViewCell 클래스 인스턴스 이름으로 UINib을 가져오기 위한 작업
protocol Nibbed {
    static var uiNib: UINib { get }
}

extension Nibbed {
    static var uiNib: UINib {
        return UINib(nibName: String(describing: Self.self), bundle: nil)
    }
}

extension UITableViewCell: Nibbed {}


// MARK: - ReuseIdentifiable TableViewCell의 ReuseIdentifiable을 사용하기위해 ReuseIdentifiable을 채택한 인스턴스의 이름을 가져오는 작업
protocol ReuseIdentifiable {
    static var reuseIdentifier: String { get }
}

extension ReuseIdentifiable {
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}

extension UITableViewCell: ReuseIdentifiable {}



// MARK: - MainVC SwiftUI에서 동작하게 만듬
extension MainVC {
    private struct VCRepresentable: UIViewControllerRepresentable {
        let mainVC: MainVC
        
        /// 일정의 생성자 역할 필수로 정의
        func makeUIViewController(context: Context) -> some UIViewController {
            return mainVC
        }
        // SwiftUI는 데이터 상태가 변경이 되면 뷰를 업데이트 해줘야 한다 그러기위해서 updateUIViewController를 필수로 정의
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
    /// MainVC.getRepresentable을 호출하게 되면 SwiftUI View가 반환됨
    func getRepresentable() -> some View {
        VCRepresentable(mainVC: self)
    }
}

extension UIViewController: StoryBoarded {}

// 스토리보드이름으로 뷰컨트롤러 생성해 주는 프로토콜
protocol StoryBoarded {
    // StoryBoarded를 준수하는 녀석의 클래스를 가져온다
    static func instantiate(_ storyboardName: String?) -> Self
}

// 프로토콜을 정의
extension StoryBoarded {
    static func instantiate(_ storyboardName: String? = nil) -> Self {
        
        // String(describing: Self) == 현재 바라보고 클래스의 이름 자체를 문자열로 만들어준다
        let name = storyboardName ?? String(describing: self)
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! Self
        
    }
}

