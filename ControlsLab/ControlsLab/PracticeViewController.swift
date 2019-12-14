import UIKit

class PracticeViewController: UIViewController {
    
    private lazy var loginContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var userNameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.borderStyle = .bezel
        textField.placeholder = "Enter username..."
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.borderStyle = .bezel
        textField.placeholder = "Enter password..."
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    @objc private func buttonPressed(_ sender: UIButton) {
        print("buttonPressed")
        sender.titleLabel?.text = "Button was pressed."
        sender.setTitle("button pressed", for: .normal)
    }
    
    private func configureView() {
        view.backgroundColor = .systemPink
        setUpLoginContextView()
        setUpUserNameTextField()
        setUpPasswordTextField()
        setUpLoginButton()
    }
    
    private func setUpLoginContextView() {
        view.addSubview(loginContentView)
        NSLayoutConstraint.activate([
            loginContentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginContentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3)])
    }
    
    private func setUpUserNameTextField() {
        loginContentView.addSubview(userNameTextField)
        NSLayoutConstraint.activate([
            userNameTextField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 20),
            userNameTextField.leadingAnchor.constraint(equalTo: loginContentView.leadingAnchor, constant: 20),
            userNameTextField.trailingAnchor.constraint(equalTo: loginContentView.trailingAnchor, constant: -20),
            userNameTextField.heightAnchor.constraint(equalToConstant: 50)])
    }
    
    private func setUpPasswordTextField() {
        loginContentView.addSubview(passwordTextField)
        NSLayoutConstraint.activate([
            passwordTextField.leadingAnchor.constraint(equalTo: loginContentView.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: loginContentView.trailingAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 20)])
    }
    
    private func setUpLoginButton() {
        loginContentView.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.widthAnchor.constraint(equalToConstant: view.frame.width / 3),
            loginButton.centerXAnchor.constraint(equalTo: loginContentView.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.bottomAnchor.constraint(equalTo: loginContentView.bottomAnchor, constant: -20)])
    }
}

