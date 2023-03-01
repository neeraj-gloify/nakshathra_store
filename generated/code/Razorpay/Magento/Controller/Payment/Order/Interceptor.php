<?php
namespace Razorpay\Magento\Controller\Payment\Order;

/**
 * Interceptor class for @see \Razorpay\Magento\Controller\Payment\Order
 */
class Interceptor extends \Razorpay\Magento\Controller\Payment\Order implements \Magento\Framework\Interception\InterceptorInterface
{
    use \Magento\Framework\Interception\Interceptor;

    public function __construct(\Magento\Framework\App\Action\Context $context, \Magento\Customer\Model\Session $customerSession, \Magento\Checkout\Model\Session $checkoutSession, \Razorpay\Magento\Model\CheckoutFactory $checkoutFactory, \Razorpay\Magento\Model\Config $config, \Magento\Catalog\Model\Session $catalogSession, \Magento\Store\Model\StoreManagerInterface $storeManager, \Psr\Log\LoggerInterface $logger)
    {
        $this->___init();
        parent::__construct($context, $customerSession, $checkoutSession, $checkoutFactory, $config, $catalogSession, $storeManager, $logger);
    }

    /**
     * {@inheritdoc}
     */
    public function dispatch(\Magento\Framework\App\RequestInterface $request)
    {
        $pluginInfo = $this->pluginList->getNext($this->subjectType, 'dispatch');
        if (!$pluginInfo) {
            return parent::dispatch($request);
        } else {
            return $this->___callPlugins('dispatch', func_get_args(), $pluginInfo);
        }
    }
}
