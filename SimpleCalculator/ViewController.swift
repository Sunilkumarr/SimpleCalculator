import UIKit

class ViewController: UIViewController {
    
    lazy var allButtons: [UIButton] = [
        clearButton, percentageButton, plusMinusButton, divideButton,
        sevenButton, eightButton, nineButton, multipleButton,
        fourButton, fiveButton, sixButton, minusButton,
        oneButton, twoButton, threeButton, plusButton,
        dotButton, equalButton, deleteButton, zeroButton
    ]
    
    var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 1
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let displayScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    var numberView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var displayNumber: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.isAccessibilityElement = true
        label.textColor = .white
        label.lineBreakMode = .byTruncatingHead
        label.font = UIFont.systemFont(ofSize: 48, weight: .bold)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var firstRowStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 1
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var secondRowRowStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 1
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var thirdRowStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 1
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var fourthRowStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 1
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var fifthRowStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 1
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var clearButton: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("AC", for: .normal)
        button.isAccessibilityElement = true
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 92/255, green: 92/255, blue: 95/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var percentageButton: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("%", for: .normal)
        button.isAccessibilityElement = true
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 92/255, green: 92/255, blue: 95/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var plusMinusButton: UIButton = {
        var button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("+/-", for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 92/255, green: 92/255, blue: 95/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var divideButton: UIButton = {
        var button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("÷", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 255/255, green: 159/255, blue: 10/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var sevenButton: UIButton = {
        var button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var eightButton: UIButton = {
        var button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var nineButton: UIButton = {
        var button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var multipleButton: UIButton = {
        var button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("×", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 255/255, green: 159/255, blue: 10/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var fourButton: UIButton = {
        let button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var fiveButton: UIButton = {
        var button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var sixButton: UIButton = {
        var button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var minusButton: UIButton = {
        var button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("-", for: .normal)
        button.isUserInteractionEnabled = true
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.backgroundColor = UIColor(red: 255/255, green: 159/255, blue: 10/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var oneButton: UIButton = {
        let button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var twoButton: UIButton = {
        let button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var threeButton: UIButton = {
        let button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 255/255, green: 159/255, blue: 10/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var deleteButton: UIButton = {
        let button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("⌫", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var zeroButton: UIButton = {
        let button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("0", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var dotButton: UIButton = {
        let button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle(".", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 42/255, green: 42/255, blue: 44/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var equalButton: UIButton = {
        let button = UIButton(type: .system)
        button.isAccessibilityElement = true
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(red: 255/255, green: 159/255, blue: 10/255, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupAccessibility()
        addGestures()
        view.layoutIfNeeded()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        makeButtonsCircular()
    }
    
    func addGestures() {
        lazy var allButtons: [UIButton] = [
            clearButton, percentageButton, plusMinusButton, divideButton,
            sevenButton, eightButton, nineButton, multipleButton,
            fourButton, fiveButton, sixButton, minusButton,
            oneButton, twoButton, threeButton, plusButton,
            dotButton, equalButton, deleteButton, zeroButton
        ]
        
        clearButton.addTarget(self, action: #selector(clearButtonTapped), for: .touchUpInside)
        percentageButton.addTarget(self, action: #selector(percentageButtonTapped), for: .touchUpInside)
        plusMinusButton.addTarget(self, action: #selector(plusMinusButtonTapped), for: .touchUpInside)
        divideButton.addTarget(self, action: #selector(divideButtonTapped), for: .touchUpInside)
        sevenButton.addTarget(self, action: #selector(numberButtonTapped(_:)), for: .touchUpInside)
        eightButton.addTarget(self, action: #selector(numberButtonTapped(_:)), for: .touchUpInside)
        nineButton.addTarget(self, action: #selector(numberButtonTapped(_:)), for: .touchUpInside)
        multipleButton.addTarget(self, action: #selector(multipleButtonTapped), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(numberButtonTapped(_:)), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(numberButtonTapped(_:)), for: .touchUpInside)
        sixButton.addTarget(self, action: #selector(numberButtonTapped(_:)), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        oneButton.addTarget(self, action: #selector(numberButtonTapped(_:)), for: .touchUpInside)
        twoButton.addTarget(self, action: #selector(numberButtonTapped(_:)), for: .touchUpInside)
        threeButton.addTarget(self, action: #selector(numberButtonTapped(_:)), for: .touchUpInside)
        plusButton.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
        deleteButton.addTarget(self, action: #selector(deleteButtonTapped), for: .touchUpInside)
        zeroButton.addTarget(self, action: #selector(numberButtonTapped(_:)), for: .touchUpInside)
        dotButton.addTarget(self, action: #selector(dotButtonTapped), for: .touchUpInside)
        equalButton.addTarget(self, action: #selector(equalButtonTapped), for: .touchUpInside)
    }
    
    func setupUI() {
        view.backgroundColor = .black
        numberView.addSubview(displayScrollView)
        displayScrollView.addSubview(displayNumber)
        
        firstRowStackView.addArrangedSubview(clearButton)
        firstRowStackView.addArrangedSubview(percentageButton)
        firstRowStackView.addArrangedSubview(plusMinusButton)
        firstRowStackView.addArrangedSubview(divideButton)
        
        secondRowRowStackView.addArrangedSubview(sevenButton)
        secondRowRowStackView.addArrangedSubview(eightButton)
        secondRowRowStackView.addArrangedSubview(nineButton)
        secondRowRowStackView.addArrangedSubview(multipleButton)
        
        thirdRowStackView.addArrangedSubview(fourButton)
        thirdRowStackView.addArrangedSubview(fiveButton)
        thirdRowStackView.addArrangedSubview(sixButton)
        thirdRowStackView.addArrangedSubview(minusButton)
        
        fourthRowStackView.addArrangedSubview(oneButton)
        fourthRowStackView.addArrangedSubview(twoButton)
        fourthRowStackView.addArrangedSubview(threeButton)
        fourthRowStackView.addArrangedSubview(plusButton)
        
        fifthRowStackView.addArrangedSubview(deleteButton)
        fifthRowStackView.addArrangedSubview(zeroButton)
        fifthRowStackView.addArrangedSubview(dotButton)
        fifthRowStackView.addArrangedSubview(equalButton)
        
        mainStackView.addArrangedSubview(numberView)
        mainStackView.addArrangedSubview(firstRowStackView)
        mainStackView.addArrangedSubview(secondRowRowStackView)
        mainStackView.addArrangedSubview(thirdRowStackView)
        mainStackView.addArrangedSubview(fourthRowStackView)
        mainStackView.addArrangedSubview(fifthRowStackView)
        
        view.addSubview(mainStackView)
        NSLayoutConstraint.activate([
            displayScrollView.leadingAnchor.constraint(equalTo: numberView.leadingAnchor, constant: 20),
            displayScrollView.trailingAnchor.constraint(equalTo: numberView.trailingAnchor, constant: -20),
            displayScrollView.topAnchor.constraint(equalTo: numberView.topAnchor),
            displayScrollView.bottomAnchor.constraint(equalTo: numberView.bottomAnchor),
            
            displayNumber.trailingAnchor.constraint(equalTo: displayScrollView.contentLayoutGuide.trailingAnchor),
            displayNumber.leadingAnchor.constraint(greaterThanOrEqualTo: displayScrollView.contentLayoutGuide.leadingAnchor),
            displayNumber.centerYAnchor.constraint(equalTo: displayScrollView.centerYAnchor),
            displayNumber.widthAnchor.constraint(greaterThanOrEqualTo: displayScrollView.frameLayoutGuide.widthAnchor),
            
            mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        
        for button in allButtons {
            let sizeConstraint = button.heightAnchor.constraint(equalToConstant: 80)
            sizeConstraint.priority = .defaultHigh
            sizeConstraint.isActive = true
            
            let squareConstraint = button.widthAnchor.constraint(equalTo: button.heightAnchor)
            squareConstraint.priority = .required
            squareConstraint.isActive = true
        }
    }
    
    func updateDisplay(text: String) {
        displayNumber.text = text
        displayNumber.accessibilityLabel = "Input \(text)"
        displayNumber.sizeToFit()
        displayScrollView.layoutIfNeeded()
        let offsetX = max(displayScrollView.contentSize.width - displayScrollView.bounds.width, 0)
        displayScrollView.setContentOffset(CGPoint(x: offsetX, y: 0), animated: false)
    }
    
    func setupAccessibility() {
        clearButton.accessibilityLabel = "All Clear"
        percentageButton.accessibilityLabel = "Percent"
        plusMinusButton.accessibilityLabel = "change sign"
        divideButton.accessibilityLabel = "Divide"
        sevenButton.accessibilityLabel = "Seven"
        eightButton.accessibilityLabel = "Eight"
        nineButton.accessibilityLabel = "Nine"
        multipleButton.accessibilityLabel = "Multiply"
        fourButton.accessibilityLabel = "Four"
        fiveButton.accessibilityLabel = "Five"
        sixButton.accessibilityLabel = "Six"
        minusButton.accessibilityLabel = "Subtract"
        oneButton.accessibilityLabel = "One"
        twoButton.accessibilityLabel = "Two"
        threeButton.accessibilityLabel = "Three"
        plusButton.accessibilityLabel = "Add"
        deleteButton.accessibilityLabel = "Delete"
        zeroButton.accessibilityLabel = "Zero"
        dotButton.accessibilityLabel = "Point"
        equalButton.accessibilityLabel = "Equals"
    }
    
    private func makeButtonsCircular() {
        
        for button in allButtons {
            let side = min(button.frame.width, button.frame.height)
            button.layer.cornerRadius = side / 2
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate(alongsideTransition: { _ in
            self.view.layoutIfNeeded()
        }, completion: { _ in
            self.makeButtonsCircular()
        })
    }
    
    func evaluateExpression(_ expression: String) -> String? {
        let sanitized = expression
            .replacingOccurrences(of: "÷", with: "/")
            .replacingOccurrences(of: "×", with: "*")
            .replacingOccurrences(of: "−", with: "-")
        
        let isValid = NSPredicate(format: "SELF MATCHES %@", "^[0-9+\\-*/.() ]+$")
            .evaluate(with: sanitized)
        
        guard isValid else { return nil }
        
        let spaced = sanitized.replacingOccurrences(of: "([+\\-*/])", with: " $1 ", options: .regularExpression)
        let tokens = spaced.split(separator: " ")
        let converted = tokens.map { token -> String in
            if let _ = Double(token), !token.contains(".") {
                return token + ".0"
            }
            return String(token)
        }
        let finalExpression = converted.joined(separator: " ")
        
        let exp = NSExpression(format: finalExpression)
        guard let result = exp.expressionValue(with: nil, context: nil) as? NSNumber else {
            return nil
        }
        
        let value = result.doubleValue
        
        if value.isNaN || value.isInfinite {
            return nil
        }
        
        if value.truncatingRemainder(dividingBy: 1) == 0 {
            return String(Int(value))
        } else {
            let formatted = String(format: "%.8f", value)
            return formatted
                .replacingOccurrences(of: #"(\.\d*?[1-9])0+$"#, with: "$1", options: .regularExpression)
                .replacingOccurrences(of: #"\.0+$"#, with: "", options: .regularExpression)
        }
    }
    
    
    @objc func clearButtonTapped() {
        let finalText = "0"
        updateDisplay(text: finalText)
    }
    
    @objc func percentageButtonTapped() {
        if let text = displayNumber.text,
           !text.hasSuffix("%"), text != "0", !text.hasSuffix(".") {
            let finalText = text + "%"
            updateDisplay(text: finalText)
        }
    }
    
    @objc func plusMinusButtonTapped() {
        guard var text = displayNumber.text, !text.isEmpty else { return }
        
        // Remove trailing operator if present
        if text.hasSuffix("+") || text.hasSuffix("−") || text.hasSuffix("×") || text.hasSuffix("÷") || text.hasSuffix(" ") || !text.hasSuffix(".") {
            return
        }
        
        // Find the range of the last number
        let chars = Array(text)
        var i = chars.count - 1
        while i >= 0 && (chars[i].isNumber || chars[i] == ".") {
            i -= 1
        }
        // If there is no number after the last operator, return
        if i == chars.count - 1 {
            return
        }
        let startIdx = text.index(text.startIndex, offsetBy: i + 1)
        let endIdx = text.index(before: text.endIndex)
        let lastNumber = String(text[startIdx...endIdx])
        
        // If last number is empty or zero, do nothing
        guard !lastNumber.isEmpty, lastNumber != "0" else { return }
        
        // Check if the last number is already wrapped as negative (e.g., -9 or (-9))
        let needsParens = (startIdx > text.startIndex)
        let prevIdx = needsParens ? text.index(before: startIdx) : startIdx
        let isAlreadyNegativeWrapped = needsParens && text[prevIdx] == "(" && text[endIdx] == ")" && lastNumber.hasPrefix("-")
        
        if isAlreadyNegativeWrapped {
            // Remove wrapping: replace ( -number ) with number
            let beforeParens = text[..<prevIdx]
            let afterParens = text[text.index(after: endIdx)...]
            let positiveNumber = String(lastNumber.dropFirst())
            text = beforeParens + positiveNumber + afterParens
        } else if needsParens && text[prevIdx] == "-" && (prevIdx == text.startIndex || "+-×÷".contains(text[text.index(before: prevIdx)])) {
            // If previous is a minus operator, wrap the number in parentheses and add minus
            let before = text[..<startIdx]
            let after = text[text.index(after: endIdx)...]
            text = before + "(-" + lastNumber + ")" + after
        } else {
            // General case: wrap the last number in (-number) or remove if already wrapped
            let before = text[..<startIdx]
            let after = text[text.index(after: endIdx)...]
            if lastNumber.hasPrefix("-") {
                // Remove the negative sign
                let positiveNumber = String(lastNumber.dropFirst())
                text = before + positiveNumber + after
            } else {
                text = before + "(-" + lastNumber + ")" + after
            }
        }
        updateDisplay(text: text)
    }
    
    @objc func divideButtonTapped() {
        if var text = displayNumber.text, !text.isEmpty, !text.hasSuffix("÷"), !text.hasSuffix(".") {
            if text.hasSuffix("+") || text.hasSuffix("-") || text.hasSuffix("×")  {
                text = String(text.dropLast())
            }
            let finalText = text + "÷"
            updateDisplay(text: finalText)
        }
    }
    
    @objc func numberButtonTapped(_ sender: UIButton) {
        if let number = sender.title(for: .normal),
           let currentText = displayNumber.text {
            if currentText == "0" {
                let finalText = number
                updateDisplay(text: finalText)
            } else {
                if number == "0", currentText.hasSuffix("÷0") || currentText.hasSuffix("+0") || currentText.contains("-0") || currentText.contains("×0") {
                    return
                } else if currentText.hasSuffix("÷0") || currentText.hasSuffix("+0") || currentText.contains("-0") || currentText.contains("×0") {
                    let finalText = String(currentText.dropLast()) + number
                    updateDisplay(text: finalText)
                } else {
                    let finalText = currentText + number
                    updateDisplay(text: finalText)
                }
            }
        }
    }
    
    @objc func multipleButtonTapped() {
        if var text = displayNumber.text, !text.isEmpty, !text.hasSuffix("×"), !text.hasSuffix(".") {
            if text.hasSuffix("+") || text.hasSuffix("÷") || text.hasSuffix("-") {
                text = String(text.dropLast())
            }
            let finalText = text + "×"
            updateDisplay(text: finalText)
        }
    }
    
    @objc func minusButtonTapped() {
        if var text = displayNumber.text, !text.isEmpty, !text.hasSuffix("-"), !text.hasSuffix(".") {
            if text.hasSuffix("+") || text.hasSuffix("÷") || text.hasSuffix("×") {
                text = String(text.dropLast())
            }
            let finalText = text + "-"
            updateDisplay(text: finalText)
        }
    }
    
    @objc func plusButtonTapped() {
        if var text = displayNumber.text, !text.isEmpty,
           !text.hasSuffix("+"), !text.hasSuffix(".") {
            if text.hasSuffix("-") || text.hasSuffix("÷") || text.hasSuffix("×") {
                text = String(text.dropLast())
            }
            let finalText = text + "+"
            updateDisplay(text: finalText)
        }
    }
    
    @objc func deleteButtonTapped() {
        if let text = displayNumber.text, !text.isEmpty {
            let finalText = String(text.dropLast())
            updateDisplay(text: finalText)
            if displayNumber.text!.isEmpty {
                let defaultText = "0"
                updateDisplay(text: defaultText)
            }
        }
    }
    
    @objc func dotButtonTapped() {
        if let text = displayNumber.text, !text.contains(".") {
            let finalText = text + "."
            updateDisplay(text: finalText)
        }
    }
    
    @objc func equalButtonTapped() {
        if let expression = displayNumber.text, !expression.isEmpty {
            if expression.hasSuffix("-") || expression.hasSuffix("+") || expression.hasSuffix("÷") || expression.hasSuffix("×") || expression.hasSuffix(".") {
                return
            }
            if let resultText = evaluateExpression(expression),
               let result = Double(resultText),
               result.isFinite {
                updateDisplay(text: resultText)
            } else {
                updateDisplay(text: "Undefined")
            }
        }
    }
}

