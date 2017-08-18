import UIKit

open class JDSActivityViewController: UIActivityViewController {

    fileprivate let defaultMargin: CGFloat = 16
    fileprivate let maxURLHeight: CGFloat = 100
    fileprivate let linkLabelInset: CGFloat = 10
    fileprivate let linkViewBottomSpace: CGFloat = 10

    fileprivate let animationDuration = 0.3

    fileprivate let linkBlue = UIColor(red: 0.05, green: 0.39, blue: 1.0, alpha: 1.0)

    fileprivate var linkView: UIView!
    var linkLabel = UILabel()

    open var link: URL? = nil {
        didSet {
            linkLabel.text = link?.absoluteString
        }
    }
    weak var contentView: UIView!
    var contentSize: CGSize = .zero

    deinit {
        Swift.print (#function)
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()

        contentView = view.subviews[0]
        contentSize = preferredContentSize // contentView.frame
        
        linkView = UIView()
        linkView.backgroundColor = UIColor.green

        linkLabel.textAlignment = .center
        linkLabel.textColor = linkBlue
        linkLabel.numberOfLines = 4
        linkLabel.font = linkLabel.font.withSize(15)

        let finalLinkSize = linkLabel.sizeThatFits(CGSize(width: view.frame.width - defaultMargin - 2*linkLabelInset, height: maxURLHeight))

        linkView.frame = CGRect(x: 0, y: (linkViewBottomSpace + finalLinkSize.height + 2*linkLabelInset), width: view.frame.width - defaultMargin, height: finalLinkSize.height + 2*linkLabelInset)
        linkLabel.frame = linkView.bounds.insetBy(dx: linkLabelInset, dy: linkLabelInset)

        linkView.addSubview(linkLabel)
        view.addSubview(linkView)

        let tap = UITapGestureRecognizer(target: self, action: #selector(linkDidTap(_:)))
        linkLabel.addGestureRecognizer(tap)
        linkLabel.isUserInteractionEnabled = true
    }
    
    func linkDidTap (_ gesture: UITapGestureRecognizer) {
        Swift.print (#function)
    }
    
    open override func viewDidLayoutSubviews() {
        view.layoutIfNeeded()

        var size = contentSize // preferredContentSize
        let ht = linkView.frame.height
        size.height += ht
        
        preferredContentSize = size
        
        size.height = ht
        linkView.frame.origin.y = 0
        linkView.frame.size = size
        linkLabel.frame = linkView.bounds.insetBy(dx: linkLabelInset, dy: linkLabelInset)

        contentView.frame.origin.y = ht
    }

    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

//        if let _ = link {
//            UIView.animate(withDuration: animationDuration, animations: { [unowned self] () -> Void in
//                self.linkView.alpha = 0.9
//            })
//        }
    }

    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//
//        if let _ = link {
//            UIView.animate(withDuration: animationDuration, animations: { [unowned self] () -> Void in
//                self.linkView.alpha = 0
//            })
//        }
    }
}
