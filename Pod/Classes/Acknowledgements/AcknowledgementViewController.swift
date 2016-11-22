//
//  AcknowledgementViewController.swift
//  Pods
//
//  Created by Michael Skiba on 11/21/16.
//
//

import UIKit

open class AcknowledgementViewController: UIViewController {

    public static let defaultLicenseFormatter: (String) -> NSAttributedString = { string in
        let font = UIFont.preferredFont(forTextStyle: .body)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.hyphenationFactor = 1
        paragraphStyle.paragraphSpacing = font.pointSize / 2
        let attributes: [String: Any] = [
            NSFontAttributeName: font,
            NSParagraphStyleAttributeName: paragraphStyle,
            ]
        return NSAttributedString(string: string, attributes: attributes)
    }

    public var viewModel = AcknowledgementViewModel(title: "", license: "") {
        didSet {
            updateWithViewModel()
        }
    }

    public var licenseFormatter: (String) -> NSAttributedString = defaultLicenseFormatter

    public let labelView: UILabel = {
        let labelView = UILabel()
        labelView.numberOfLines = 0
        return labelView
    }()

    public required init(viewModel: AcknowledgementViewModel, licenseFormatter: @escaping (String) -> NSAttributedString, viewBackgroundColor: UIColor?) {
        super.init(nibName: nil, bundle: nil)
        self.licenseFormatter = licenseFormatter
        self.viewModel = viewModel
        if let backgroundColor = viewBackgroundColor {
            view.backgroundColor = backgroundColor
        }
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open override func loadView() {
        view = UIScrollView()
        view.backgroundColor = .white
        view.addSubview(labelView)
        configureLayout()
    }

    open override func viewDidLoad() {
        super.viewDidLoad()
        updateWithViewModel()
    }

}

private extension AcknowledgementViewController {

    func configureLayout() {
        labelView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor),
            labelView.topAnchor.constraint(equalTo: view.topAnchor),
            labelView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            labelView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            labelView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            ])
    }

    func updateWithViewModel() {
        navigationItem.title = viewModel.title
        labelView.attributedText = licenseFormatter(viewModel.license)
    }
}
