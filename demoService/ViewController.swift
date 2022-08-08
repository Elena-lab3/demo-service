//
//  ViewController.swift
//  demoService
//
//  Created by Елена Барковская on 6.08.22.
//

import UIKit

class ViewController: UIViewController {

    let baseString = "Груша цвіла апошні год. Усе галіны яе, усе вялікія расохі, да апошняга пруціка, былі ўсыпаны буйным бела-ружовым цветам. Яна кіпела, млела і раскашавалася ў пчаліным звоне, цягнула да сонца сталыя лапы і распускала ў яго ззянні маленькія, кволыя пальцы новых парасткаў. І была яна такая магутная і свежая, так утрапёна спрачаліся ў яе ружовым раі пчолы, што, здавалася, не будзе ёй зводу і не будзе ёй канца."
    
    var checkBox1 = false
    var checkBox2 = false
    var checkBox3 = false
    
    var radioBut1 = true
    var radioBut2 = false
    var radioBut3 = false
    
    let options = ["опцыя #1", "опцыя #2", "опцыя #3"]
    
    let textForTextBox: UILabel = {
        let text = UILabel()
        text.text = "Калі ласка, увядзіце тэкст"
        text.backgroundColor = .lightGray
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let updateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Абнавіць", for: .normal)
        button.backgroundColor = .lightGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let clearButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ачысціць", for: .normal)
        button.backgroundColor = .lightGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let textFiel: UITextView = {
        let textF = UITextView()
        textF.layer.borderWidth = 1
        textF.layer.cornerRadius = 5
        textF.layer.borderColor = UIColor.gray.cgColor
        textF.textAlignment = .left
        textF.font = .systemFont(ofSize: 14)
        textF.translatesAutoresizingMaskIntoConstraints = false
        return textF
    }()
    
    let line: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .lightGray
        return line
    }()
    
    //MARK: checkBox
    let checkBoxTitle: UILabel = {
        let text = UILabel()
        text.text = "Абярыце чэкбоксы:"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let checkBoxButton1: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "unchecked-checkbox"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let checkBoxLable1: UILabel = {
        let text = UILabel()
        text.text = "чэкбокс #1 (тут можа быць каментарый)"
        text.font = .systemFont(ofSize: 14)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let checkBoxButton2: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "unchecked-checkbox"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let checkBoxLable2: UILabel = {
        let text = UILabel()
        text.text = "чэкбокс #2 (тут можа быць каментарый)"
        text.font = .systemFont(ofSize: 14)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let checkBoxButton3: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "unchecked-checkbox"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let checkBoxLable3: UILabel = {
        let text = UILabel()
        text.text = "чэкбокс #3 (тут можа быць каментарый)"
        text.font = .systemFont(ofSize: 14)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    //MARK: radio button
    let radioButtonTitle: UILabel = {
        let text = UILabel()
        text.text = "Абярыце пераключальнік:"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let radioButton1: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "checkedRadio"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let radioLable1: UILabel = {
        let text = UILabel()
        text.text = "пераключальнік #1 (тут можа быць каментарый)"
        text.font = .systemFont(ofSize: 14)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let radioButton2: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let radioLable2: UILabel = {
        let text = UILabel()
        text.text = "пераключальнік #2 (тут можа быць каментарый)"
        text.font = .systemFont(ofSize: 14)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let radioButton3: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let radioLable3: UILabel = {
        let text = UILabel()
        text.text = "пераключальнік #3 (тут можа быць каментарый)"
        text.font = .systemFont(ofSize: 14)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    //MARK: picker
    let pickerTitle: UILabel = {
        let text = UILabel()
        text.text = "Абярыце опцыю:"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let optionTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "опцыя"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .center
        return textField
    }()
    
    let picker = UIPickerView()
    
    let resultButton: UIButton = {
        let buttons = UIButton()
        buttons.setTitle("Паказаць уведзены тэкст і абраныя наладкі!", for: .normal)
        buttons.layer.borderWidth = 1
        buttons.layer.cornerRadius = 5
        buttons.backgroundColor = UIColor(red: 0.75, green: 0.83, blue: 0.95, alpha: 1.00)
        buttons.setTitleColor(UIColor.black, for: .normal)
        buttons.translatesAutoresizingMaskIntoConstraints = false
        return buttons
    }()
    
    let resultText: UILabelWithInsets = {
        let text = UILabelWithInsets()
        text.text = "Вынік"
        text.backgroundColor = .lightGray
        text.textInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let resultField: UITextView = {
        let textF = UITextView()
        textF.layer.borderWidth = 1
        textF.layer.cornerRadius = 5
        textF.layer.borderColor = UIColor.gray.cgColor
        textF.textAlignment = .left
        
        textF.font = .systemFont(ofSize: 14)
        textF.translatesAutoresizingMaskIntoConstraints = false
        return textF
    }()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = view.bounds
        scrollView.contentSize = contentSize
        return scrollView
    }()
    
    private var contentSize: CGSize{
        CGSize(width: view.frame.width, height: view.frame.height + 500)
    }
    //MARK: -- viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        
        
        scrollView.addSubview(textForTextBox)
        
        scrollView.addSubview(updateButton)
        scrollView.addSubview(clearButton)
        scrollView.addSubview(textFiel)
        scrollView.addSubview(line)
        
        scrollView.addSubview(checkBoxTitle)
        scrollView.addSubview(checkBoxButton1)
        scrollView.addSubview(checkBoxLable1)
        scrollView.addSubview(checkBoxButton2)
        scrollView.addSubview(checkBoxLable2)
        scrollView.addSubview(checkBoxButton3)
        scrollView.addSubview(checkBoxLable3)
        
        scrollView.addSubview(radioButtonTitle)
        scrollView.addSubview(radioButton1)
        scrollView.addSubview(radioLable1)
        scrollView.addSubview(radioButton2)
        scrollView.addSubview(radioLable2)
        scrollView.addSubview(radioButton3)
        scrollView.addSubview(radioLable3)

        scrollView.addSubview(pickerTitle)
        scrollView.addSubview(optionTextField)
        scrollView.addSubview(resultButton)
        scrollView.addSubview(resultText)
        scrollView.addSubview(resultField)
        
        
        setupTextForTextBox()
        setupClearButton()
        setupUpdateButton()
        setupTextField()
        setupLine()
        
        setupCheckBoxTitle()
        setupCheckBoxButton1()
        setupCheckBoxLable1()
        setupCheckBoxButton2()
        setupCheckBoxLable2()
        setupCheckBoxButton3()
        setupCheckBoxLable3()
        
        setupRadioButtonTitle()
        setupRadioButton1()
        setupRadioLable1()
        setupRadioButton2()
        setupRadioLable2()
        setupRadioButton3()
        setupRadioLable3()
        setupPickerTitle()
        setupOptionTextField()
        picker.delegate = self
        picker.dataSource = self
        
        optionTextField.inputView = picker
        setupResultButton()
        setupResultText()
        setupResultField()
        
        clearButton.addTarget(self, action: #selector(touchClearButton), for: .touchDown)
        updateButton.addTarget(self, action: #selector(touchUpdateButton), for: .touchDown)
        checkBoxButton1.addTarget(self, action: #selector(touchCheckBoxButton1), for: .touchDown)
        checkBoxButton2.addTarget(self, action: #selector(touchCheckBoxButton2), for: .touchDown)
        checkBoxButton3.addTarget(self, action: #selector(touchCheckBoxButton3), for: .touchDown)
        radioButton1.addTarget(self, action: #selector(changeRadioButton1), for: .touchDown)
        radioButton2.addTarget(self, action: #selector(changeRadioButton2), for: .touchDown)
        radioButton3.addTarget(self, action: #selector(changeRadioButton3), for: .touchDown)
        resultButton.addTarget(self, action: #selector(setResult), for: .touchDown)
        
    }

    
    //MARK: -- setup functions
    func setupTextForTextBox(){
        textForTextBox.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        textForTextBox.rightAnchor.constraint(equalTo: updateButton.leftAnchor).isActive = true
        textForTextBox.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textForTextBox.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20).isActive = true
        textForTextBox.textAlignment = .center
        textForTextBox.font = UIFont.boldSystemFont(ofSize: 15)
    }
    
    func setupClearButton(){
        clearButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        clearButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        clearButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        clearButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20).isActive = true
        clearButton.layer.borderWidth = 1
        clearButton.layer.cornerRadius = 5
        clearButton.layer.borderColor = UIColor.gray.cgColor
        clearButton.titleLabel?.textAlignment = .center
        clearButton.setTitleColor(.black, for: .normal)
    }
    
    func setupUpdateButton(){
        updateButton.rightAnchor.constraint(equalTo: clearButton.leftAnchor).isActive = true
        updateButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        updateButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        updateButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20).isActive = true
        updateButton.titleLabel?.textAlignment = .center
        updateButton.setTitleColor(.black, for: .normal)
        updateButton.layer.borderWidth = 1
        updateButton.layer.cornerRadius = 5
        updateButton.layer.borderColor = UIColor.gray.cgColor
    }
    
    func setupTextField(){
        textFiel.topAnchor.constraint(equalTo: textForTextBox.bottomAnchor, constant: 20).isActive = true
        textFiel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        textFiel.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive = true
        textFiel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        textFiel.text = baseString
    }
    
    func setupLine(){
        line.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        line.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        line.topAnchor.constraint(equalTo: textFiel.bottomAnchor, constant: 35).isActive = true
    }
    
    func setupCheckBoxTitle(){
        checkBoxTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        checkBoxTitle.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 20).isActive = true
        checkBoxTitle.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        checkBoxTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setupCheckBoxButton1(){
        checkBoxButton1.widthAnchor.constraint(equalToConstant: 30).isActive = true
        checkBoxButton1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        checkBoxButton1.topAnchor.constraint(equalTo: checkBoxTitle.bottomAnchor, constant: 20).isActive = true
        checkBoxButton1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }
    
    func setupCheckBoxLable1(){
        checkBoxLable1.leftAnchor.constraint(equalTo: checkBoxButton1.rightAnchor, constant: 5).isActive = true
        checkBoxLable1.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        checkBoxLable1.heightAnchor.constraint(equalTo: checkBoxButton1.heightAnchor).isActive = true
        checkBoxLable1.topAnchor.constraint(equalTo: checkBoxButton1.topAnchor).isActive = true
    }
    
    func setupCheckBoxButton2(){
        checkBoxButton2.widthAnchor.constraint(equalToConstant: 30).isActive = true
        checkBoxButton2.heightAnchor.constraint(equalToConstant: 30).isActive = true
        checkBoxButton2.topAnchor.constraint(equalTo: checkBoxButton1.bottomAnchor, constant: 10).isActive = true
        checkBoxButton2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }
    
    func setupCheckBoxLable2(){
        checkBoxLable2.leftAnchor.constraint(equalTo: checkBoxButton2.rightAnchor, constant: 5).isActive = true
        checkBoxLable2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        checkBoxLable2.heightAnchor.constraint(equalTo: checkBoxButton2.heightAnchor).isActive = true
        checkBoxLable2.topAnchor.constraint(equalTo: checkBoxButton2.topAnchor).isActive = true
    }
    
    func setupCheckBoxButton3(){
        checkBoxButton3.widthAnchor.constraint(equalToConstant: 30).isActive = true
        checkBoxButton3.heightAnchor.constraint(equalToConstant: 30).isActive = true
        checkBoxButton3.topAnchor.constraint(equalTo: checkBoxButton2.bottomAnchor, constant: 10).isActive = true
        checkBoxButton3.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }
    
    func setupCheckBoxLable3(){
        checkBoxLable3.leftAnchor.constraint(equalTo: checkBoxButton3.rightAnchor, constant: 5).isActive = true
        checkBoxLable3.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        checkBoxLable3.heightAnchor.constraint(equalTo: checkBoxButton3.heightAnchor).isActive = true
        checkBoxLable3.topAnchor.constraint(equalTo: checkBoxButton3.topAnchor).isActive = true
    }
    
    func setupRadioButtonTitle(){
        radioButtonTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        radioButtonTitle.topAnchor.constraint(equalTo: checkBoxButton3.bottomAnchor, constant: 20).isActive = true
        radioButtonTitle.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        radioButtonTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setupRadioButton1(){
        radioButton1.widthAnchor.constraint(equalToConstant: 24).isActive = true
        radioButton1.heightAnchor.constraint(equalToConstant: 24).isActive = true
        radioButton1.topAnchor.constraint(equalTo: radioButtonTitle.bottomAnchor, constant: 20).isActive = true
        radioButton1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }
    
    func setupRadioLable1(){
        radioLable1.leftAnchor.constraint(equalTo: radioButton1.rightAnchor, constant: 5).isActive = true
        radioLable1.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        radioLable1.heightAnchor.constraint(equalTo: radioButton1.heightAnchor).isActive = true
        radioLable1.topAnchor.constraint(equalTo: radioButton1.topAnchor).isActive = true
    }
    
    func setupRadioButton2(){
        radioButton2.widthAnchor.constraint(equalToConstant: 24).isActive = true
        radioButton2.heightAnchor.constraint(equalToConstant: 24).isActive = true
        radioButton2.topAnchor.constraint(equalTo: radioButton1.bottomAnchor, constant: 10).isActive = true
        radioButton2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }
    
    func setupRadioLable2(){
        radioLable2.leftAnchor.constraint(equalTo: radioButton2.rightAnchor, constant: 5).isActive = true
        radioLable2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        radioLable2.heightAnchor.constraint(equalTo: radioButton2.heightAnchor).isActive = true
        radioLable2.topAnchor.constraint(equalTo: radioButton2.topAnchor).isActive = true
    }
    
    func setupRadioButton3(){
        radioButton3.widthAnchor.constraint(equalToConstant: 24).isActive = true
        radioButton3.heightAnchor.constraint(equalToConstant: 24).isActive = true
        radioButton3.topAnchor.constraint(equalTo: radioButton2.bottomAnchor, constant: 10).isActive = true
        radioButton3.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }
    
    func setupRadioLable3(){
        radioLable3.leftAnchor.constraint(equalTo: radioButton3.rightAnchor, constant: 5).isActive = true
        radioLable3.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        radioLable3.heightAnchor.constraint(equalTo: radioButton3.heightAnchor).isActive = true
        radioLable3.topAnchor.constraint(equalTo: radioButton3.topAnchor).isActive = true
    }
    
    func setupPickerTitle(){
        pickerTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        pickerTitle.topAnchor.constraint(equalTo: radioButton3.bottomAnchor, constant: 20).isActive = true
        pickerTitle.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        pickerTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setupOptionTextField(){
        optionTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        optionTextField.topAnchor.constraint(equalTo: pickerTitle.bottomAnchor, constant: 20).isActive = true
        optionTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        optionTextField.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func setupResultButton(){
        resultButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        resultButton.topAnchor.constraint(equalTo: optionTextField.bottomAnchor, constant: 20).isActive = true
        resultButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        resultButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }

    func setupResultText(){
        resultText.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        resultText.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        resultText.heightAnchor.constraint(equalToConstant: 40).isActive = true
        resultText.topAnchor.constraint(equalTo: resultButton.bottomAnchor, constant: 20).isActive = true
        resultText.textAlignment = .left
        resultText.font = UIFont.boldSystemFont(ofSize: 18)
    }
    
    func setupResultField(){
        resultField.topAnchor.constraint(equalTo: resultText.bottomAnchor, constant: 20).isActive = true
        resultField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        resultField.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive = true
        resultField.heightAnchor.constraint(equalToConstant: 500).isActive = true
        resultField.text = "  Тут будзе вынік"
    }
    
    //MARK: -- methods
    @objc func touchClearButton(){
        textFiel.text = ""
    }
    
    @objc func touchUpdateButton(){
        textFiel.text = baseString
    }
    
    @objc func touchCheckBoxButton1(){
        if !checkBox1{
            checkBoxButton1.setBackgroundImage(UIImage(named: "checked"), for: .normal)
            checkBox1 = true
        }else{
            checkBoxButton1.setBackgroundImage(UIImage(named: "unchecked-checkbox"), for: .normal)
            checkBox1 = false
        }
        
    }
    
    @objc func touchCheckBoxButton2(){
        if !checkBox2{
            checkBoxButton2.setBackgroundImage(UIImage(named: "checked"), for: .normal)
            checkBox2 = true
        }else{
            checkBoxButton2.setBackgroundImage(UIImage(named: "unchecked-checkbox"), for: .normal)
            checkBox2 = false
        }
        
    }
    
    @objc func touchCheckBoxButton3(){
        if !checkBox3{
            checkBoxButton3.setBackgroundImage(UIImage(named: "checked"), for: .normal)
            checkBox3 = true
        }else{
            checkBoxButton3.setBackgroundImage(UIImage(named: "unchecked-checkbox"), for: .normal)
            checkBox3 = false
        }
        
    }
    
    @objc func changeRadioButton1(){
        if !radioBut1{
            radioButton1.setBackgroundImage(UIImage(named: "checkedRadio"), for: .normal)
            radioButton2.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: .normal)
            radioButton3.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: .normal)
            radioBut1 = true
            radioBut2 = false
            radioBut3 = false
        }
    }
    
    @objc func changeRadioButton2(){
        if !radioBut2{
            radioButton1.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: .normal)
            radioButton2.setBackgroundImage(UIImage(named: "checkedRadio"), for: .normal)
            radioButton3.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: .normal)
            radioBut1 = false
            radioBut2 = true
            radioBut3 = false
        }
    }
    
    @objc func changeRadioButton3(){
        if !radioBut3{
            radioButton1.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: .normal)
            radioButton2.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: .normal)
            radioButton3.setBackgroundImage(UIImage(named: "checkedRadio"), for: .normal)
            radioBut1 = false
            radioBut2 = false
            radioBut3 = true
        }
    }
    
    @objc func setResult(){
        resultField.text = "Карыстальнік увёў наступны тэкст: \r\n  "
        resultField.text.append(contentsOf: textFiel.text)
        resultField.text.append(contentsOf: "\r\n \r\n")
        resultField.text.append(contentsOf: "Карыстальнік абраў наступныя наладкі: \r\n")
        if checkBox1{
            resultField.text.append(contentsOf: "* чэкбокс #1 — Карыстальнік абраў чэкбокс #1 \r\n")
        }
        if checkBox2{
            resultField.text.append(contentsOf: "* чэкбокс #2 — Карыстальнік абраў чэкбокс #2 \r\n")
        }
        if checkBox3{
            resultField.text.append(contentsOf: "* чэкбокс #3 — Карыстальнік абраў чэкбокс #3 \r\n")
        }
        if radioBut1{
            resultField.text.append(contentsOf: "* пераключальнік #1 — Карыстальнік абраў пераключальнік #1 \r\n")
        }
        if radioBut2{
            resultField.text.append(contentsOf: "* пераключальнік #2 — Карыстальнік абраў пераключальнік #2 \r\n")
        }
        if radioBut3{
            resultField.text.append(contentsOf: "* пераключальнік #3 — Карыстальнік абраў пераключальнік #3 \r\n")
        }
        if String(describing: optionTextField.text!) == ""{
            resultField.text.append(contentsOf: "* Карыстальнік не абраў опцыю")
        }else{
            resultField.text.append(contentsOf: "* \(String(describing: optionTextField.text!)) — Карыстальнік абраў \(String(describing: optionTextField.text!))")
        }
        
    }

}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return options.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return options[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        optionTextField.text = options[row]
        optionTextField.resignFirstResponder()
    }
}

class UILabelWithInsets: UILabel {
    public var textInsets: UIEdgeInsets = UIEdgeInsets.zero {
        didSet {
            setNeedsDisplay() // вызывает drawText после установки отступов
        }
    }

    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: textInsets))
    }
}

