//
//  HomeViewController.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 25.3.21.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
  
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var lista: [HomeModel] = []
    var filteredlista: [HomeModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populateList()
        collectionView.delegate = self
        collectionView.dataSource = self
        searchBar.delegate = self
        
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        collectionView.collectionViewLayout = flowLayout
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressedButtonBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func populateList() {
        let item1 = HomeModel(homeImage: "Semestri", homeItemsLeft: 5, homeTittle: "Semestri I", elementet: [HomeElement(homeImage: "Matematika Elementare", homeTitle: "Matematika Elementare", url: ""), HomeElement(homeImage: "computerScience", homeTitle: "Hyrje ne Shkenca Kompjuterike", url: "https://ebajrami.weebly.com/hyrje-ne-shkencen-kompjuterike.html"), HomeElement(homeImage: "computer", homeTitle: "Programimi dhe Algoritmet", url: "http://www.fberisha.org/courses/java/java1.html"), HomeElement(homeImage: "math1", homeTitle: "Matematika Diskrete", url: "http://www.fberisha.org/courses/discrete/discrete.html"), HomeElement(homeImage: "language", homeTitle: "Gjuhë Angleze", url: "")])
        
        let item2 = HomeModel(homeImage: "Semestri2", homeItemsLeft: 7, homeTittle: "Semestri II",  elementet: [HomeElement(homeImage: "math1", homeTitle: "Algjebër Lineare me Gjemoetri Analitike", url: ""), HomeElement(homeImage: "math2", homeTitle: "Analizë Matematike", url: "http://www.fberisha.org/courses/analysis/calculus.html"),HomeElement(homeImage: "coding", homeTitle: "Strukturë e të dhënave ", url: "http://www.fberisha.org/courses/java/java2.html"),HomeElement(homeImage: "code", homeTitle: "Rrjeta Kompjuterike", url: "https://ebajrami.weebly.com/rrjetat-kompjuterike-dhe-www.html"),HomeElement(homeImage: "linguistics", homeTitle: "Rradhitja e tekstit në TEX (Z)", url: ""),HomeElement(homeImage: "language", homeTitle: "Gjuhë Angleze II (Z)", url: "")])
        
        let item3 = HomeModel(homeImage: "Semestri3", homeItemsLeft: 8, homeTittle: "Semestri III", elementet: [HomeElement(homeImage: "computerScience", homeTitle: "Analizë Numerike I", url: ""),HomeElement(homeImage: "math1", homeTitle: "Algjebër", url: ""),HomeElement(homeImage: "coding", homeTitle: "Arkitektura Kompjuterike dhe Sistemet Operative", url: "https://rogova.info/up/ark_comp/"),HomeElement(homeImage: "linguistics", homeTitle: "Teori e Gjuhëve Formale (Z)", url: ""),HomeElement(homeImage: "code", homeTitle: "Siguria e të dhënave në Kompjuter (Z)", url: ""),HomeElement(homeImage: "math2", homeTitle: "Kombinatorikë (Z)", url: ""),HomeElement(homeImage: "computerScience", homeTitle: "MathLab (Z)", url: "")])
        
        let item4 = HomeModel(homeImage: "Semestri4", homeItemsLeft: 8, homeTittle: "Semestri IV",  elementet: [HomeElement(homeImage: "computer", homeTitle: "Analizë Numerike II", url: ""),HomeElement(homeImage: "math3", homeTitle: "Teori e Gjasës", url: ""),HomeElement(homeImage: "coding", homeTitle: "Programimi OOP dhe GUI", url: "https://ebajrami.weebly.com/programimi-me-oop-dhe-gui.html"),HomeElement(homeImage: "code", homeTitle: "Grafika Kompjuterike (Z)", url: ""),HomeElement(homeImage: "computer", homeTitle: "Ndërtimi i Kompilatorit (Z)", url: ""),HomeElement(homeImage: "math1", homeTitle: "Teori e Matricave (Z)", url: ""),HomeElement(homeImage: "computerScience", homeTitle: "Programimi Matematikë (Z)", url: "")])
        
        let item5 = HomeModel(homeImage: "Semestri5", homeItemsLeft: 9, homeTittle: "Semestri V", elementet: [HomeElement(homeImage: "computer", homeTitle: "Programimi në WWW", url: "https://rogova.info/up/prog_www/"), HomeElement(homeImage: "code", homeTitle: "Analizë e Algoritmeve", url: "https://ebajrami.weebly.com/analize-e-algoritmeve.html"),HomeElement(homeImage: "math3", homeTitle: "Statistikë", url: ""),HomeElement(homeImage: "linguistics", homeTitle: "Shkrim Akademik me kulturë dhe gjuhë", url: ""),HomeElement(homeImage: "accounting", homeTitle: "Kontabilitet (Z)", url: ""),HomeElement(homeImage: "math3", homeTitle: "Analiza e të Dhënave (Z)", url: "https://rogova.info/up/analiza/"),HomeElement(homeImage: "code", homeTitle: "Teori e Lojërave (Z)", url: "")])
        
        let item6 = HomeModel(homeImage: "Semestri6", homeItemsLeft: 9, homeTittle: "Semestri VI", elementet: [HomeElement(homeImage: "computer", homeTitle: "Programimi i Distribuar", url: "https://rogova.info/up/prog_dist/"),HomeElement(homeImage: "computerScience", homeTitle: "Procesim i Imazheve", url: ""),HomeElement(homeImage: "coding", homeTitle: "Inxhinierimi i Softuerit", url: "https://rogova.info/up/soft_eng/"),HomeElement(homeImage: "code", homeTitle: "Biznesi dhe Interneti (Z)", url: "https://rogova.info/up/interneti/"),HomeElement(homeImage: "computer", homeTitle: "Proceset Stohastike (Z)", url: ""),HomeElement(homeImage: "math3", homeTitle: "Zhvillimi i Softuerit në OOP (Z)", url: ""),HomeElement(homeImage: "data", homeTitle: "Programimi Paralel (Z)", url: "")])
        
        lista.append(contentsOf: [item1, item2, item3, item4, item5, item6])
        filteredlista = lista
        
        
        
    }
    func searchListFor(text: String) {
        filteredlista.removeAll()
        if text.isEmpty {
            filteredlista = lista
            
        } else {
            for item in lista  {
                for element in item.elementet{
                    if element.homeTitle.lowercased().contains(text.lowercased()){
                        
                        filteredlista.append(item)
                        
                    }
                }
            }
        }
        self.collectionView.reloadData()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredlista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCellIdentifier", for: indexPath) as? HomeCollectionViewCell{
            let item = filteredlista[indexPath.item]
            
            cell.itemImage.image = UIImage(named: item.homeImage)
            cell.itemTittle.text = item.homeTittle
            cell.itemsLeft.text = "\(item.homeItemsLeft)"
            
            
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: self.collectionView.bounds.width/2-10, height: 211)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = filteredlista[indexPath.item]
        if let detailController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SemestriViewController")  as? SemestriViewController {
            detailController.model = item
            self.navigationController?.pushViewController(detailController, animated: true)
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchListFor(text: searchText)
    }
    
    }
