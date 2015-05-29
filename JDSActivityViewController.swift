import UIKit

public class JDSActivityViewController: UIActivityViewController {

    private let defaultMargin: CGFloat = 16
    private let maxURLHeight: CGFloat = 100
    private let linkLabelInset: CGFloat = 10
    private let linkViewBottomSpace: CGFloat = 10

    private let animationDuration = 0.3

    private let linkBlue = UIColor(red: 0.05, green: 0.39, blue: 1.0, alpha: 1.0)

    private var linkView: UIView!
    private var linkLabel: UILabel!

    var link: NSURL? = nil

    override public func viewDidLoad() {
        super.viewDidLoad()

        if let url = link {
            linkView = UIView()
            linkView.backgroundColor = .whiteColor()
            linkView.layer.cornerRadius = 3
            linkView.alpha = 0

            linkLabel = UILabel()
            linkLabel.textAlignment = .Center
            linkLabel.textColor = linkBlue
            linkLabel.numberOfLines = 4
            linkLabel.text = url.absoluteString
            linkLabel.font = linkLabel.font.fontWithSize(15)
            linkLabel.alpha = 0

            let finalLinkSize = linkLabel.sizeThatFits(CGSize(width: view.frame.width - defaultMargin - 2*linkLabelInset, height: maxURLHeight))

            linkLabel.frame = CGRect(x: linkLabelInset, y: -(linkViewBottomSpace + linkLabelInset + finalLinkSize.height), width: view.frame.width - defaultMargin - 2*linkLabelInset, height: finalLinkSize.height)
            linkView.frame = CGRectInset(linkLabel.frame, -linkLabelInset, -linkLabelInset)
            linkLabel.center = linkView.center

            view.addSubview(linkView)
            view.addSubview(linkLabel)
        }
    }

    override public func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        if let _ = link {
            UIView.animateWithDuration(animationDuration, animations: { [unowned self] () -> Void in
                self.linkView.alpha = 1
                self.linkLabel.alpha = 1
            })
        }
    }

    override public func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)

        if let _ = link {
            UIView.animateWithDuration(animationDuration, animations: { [unowned self] () -> Void in
                self.linkView.alpha = 0
                self.linkLabel.alpha = 0
            })
        }
    }
}
