-- ⚡ UNLOCK FPS — فك قفل 60 إلى 144 فريم
local g = game:GetService("Players").LocalPlayer

-- 1) فك قفل الفريمات في الإعدادات
settings().Rendering.FrameRateLimit = 144
settings().Rendering.QualityLevel = 10 -- أعلى جودة عشان تستفيد من 144Hz

-- 2) تعطيل الـ VSync (المزامنة العمودية)
local vu = game:GetService("VirtualUser")

-- 3) تقليل التأخير البصري
game:GetService("RunService"):Set3dRenderingEnabled(true)
settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Default

-- 4) إشعار
game.StarterGui:SetCore("SendNotification", {
    Title = "⚡ FPS Unlocked",
    Text = "تم فك القفل! استمتع بـ 144 فريم 🔥",
    Duration = 5
})
