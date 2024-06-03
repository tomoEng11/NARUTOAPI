//
//  ViewController.swift
//  NARUTOAPI
//
//  Created by 井本智博 on 2024/05/26.
//

import UIKit
final class ViewController: UIViewController {
//
//    enum Section {
//        case main
//    }
//
//    var collectionView: UICollectionView!
//    var datasource: UICollectionViewDiffableDataSource<Section, Item>!
//    var item = Item()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//}
//
//extension ViewController: UICollectionViewDelegate {
//    //collectionViewのインスタンス化や制約を設定
//    func configureHierarchy() {
//        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
//        view.addSubview(collectionView)
//        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        collectionView.delegate = self
//    }
//}
//
//private extension ViewController {
//    //Cellのデータの設定(CellRegiとDatasource)
//    func configureDatasource() {
//
//        let cellRegistration = UICollectionView.CellRegistration<UICollectionViewListCell, Item> { cell, indexPath, itemIdentifier in
//            var content = cell.defaultContentConfiguration()
//            //ここでCellに表示するデータを入れる
//
//            cell.contentConfiguration = content
//        }
//        datasource = UICollectionViewDiffableDataSource(collectionView: collectionView)  { (collectionView, indexPath, itemIdentifier) -> UICollectionViewCell? in
//            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: itemIdentifier)
//        }
//    }
}
//
//private extension ViewController {
//    // ListのCompositionalLayoutの作成
//    func createLayout() -> UICollectionViewLayout {
//        let config = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
//        // listはstatic funcだからインスタンス化必要ない
//        return UICollectionViewCompositionalLayout.list(using: config)
//    }
//}
//
