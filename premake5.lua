project "DirectXTK"
	kind "StaticLib"
	language "C++"
	characterset "MBCS"

	flags
	{
		"MultiProcessorCompile"
	}

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    pchheader "pch.h"
	pchsource "Src/pch.cpp"

    includedirs
	{
		"Inc",
        "Src"
    }

	files
	{
        "Inc/BufferHelpers.h",
        "Inc/CommonStates.h",
        "Inc/DDSTextureLoader.h",
        "Inc/DirectXHelpers.h",
        "Inc/GamePad.h",
        "Inc/GeometricPrimitive.h",
        "Inc/GraphicsMemory.h",
        "Inc/Keyboard.h",
        "Inc/Model.h",
        "Inc/Mouse.h",
        "Inc/PostProcess.h",
        "Inc/PrimitiveBatch.h",
        "Inc/ScreenGrab.h",
        "Inc/SimpleMath.h",
        "Inc/SpriteBatch.h",
        "Inc/SpriteFont.h",
        "Inc/VertexTypes.h",
        "Inc/WICTextureLoader.h",
        "Src/PlatformHelpers.h",
        "Src/pch.h",
        "Src/pch.cpp",
        "Src/AlphaTestEffect.cpp",
        "Src/BasicEffect.cpp",
        "Src/BasicPostProcess.cpp",
        "Src/BinaryReader.cpp",
        "Src/BufferHelpers.cpp",
        "Src/CommonStates.cpp",
        "Src/DDSTextureLoader.cpp",
        "Src/DebugEffect.cpp",
        "Src/DGSLEffect.cpp",
        "Src/DGSLEffectFactory.cpp",
        "Src/DirectXHelpers.cpp",
        "Src/DualPostProcess.cpp",
        "Src/DualTextureEffect.cpp",
        "Src/EffectCommon.cpp",
        "Src/EffectFactory.cpp",
        "Src/EnvironmentMapEffect.cpp",
        "Src/GamePad.cpp",
        "Src/GeometricPrimitive.cpp",
        "Src/Geometry.cpp",
        "Src/GraphicsMemory.cpp",
        "Src/Keyboard.cpp",
        "Src/Model.cpp",
        "Src/ModelLoadCMO.cpp",
        "Src/ModelLoadSDKMESH.cpp",
        "Src/ModelLoadVBO.cpp",
        "Src/Mouse.cpp",
        "Src/NormalMapEffect.cpp",
        "Src/PBREffect.cpp",
        "Src/PBREffectFactory.cpp",
        "Src/PrimitiveBatch.cpp",
        "Src/ScreenGrab.cpp",
        "Src/SimpleMath.cpp",
        "Src/SkinnedEffect.cpp",
        "Src/SpriteBatch.cpp",
        "Src/SpriteFont.cpp",
        "Src/ToneMapPostProcess.cpp",
        "Src/VertexTypes.cpp",
        "Src/WICTextureLoader.cpp",
        "Audio/AudioEngine.cpp",
        "Audio/DynamicSoundEffectInstance.cpp",
        "Audio/SoundCommon.cpp",
        "Audio/SoundCommon.h",
        "Audio/SoundEffect.cpp",
        "Audio/SoundEffectInstance.cpp",
        "Audio/SoundStreamInstance.cpp",
        "Audio/WaveBank.cpp",
        "Audio/WaveBankReader.cpp",
        "Audio/WaveBankReader.h",
        "Audio/WAVFileReader.cpp",
        "Audio/WAVFileReader.h"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"